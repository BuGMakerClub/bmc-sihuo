<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${servicepackage}.entity;

import ${corepackage}.entity.AbstractEntity;
import java.util.LinkedList;
import java.util.List;

public class ${className} extends AbstractEntity {
	private static final long serialVersionUID = 5454155825314635342L;
			
	<#list table.columns as column>
		<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
	         && column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>
    private ${column.javaType} ${column.columnNameLower};
		</#if>	
	</#list>

<@generateJavaColumns/>
<@generateJavaOneToMany/>
<@generateJavaManyToOne/>

	public String toString()
	{
		return "${className}{" +
		<#list table.columns as column>
			"<#if column_index != 0>,</#if>${column.columnNameLower}='" + get${column.columnName}() + "\'" +	                                         	
		</#list>
		'}';
	}
	
<#macro generateJavaColumns>
	<#list table.columns as column>
	<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
	         && column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>
    public void set${column.columnName}(${column.javaType} value) {
		this.${column.columnNameLower} = value;
	}
	
	public ${column.javaType} get${column.columnName}() {
		return this.${column.columnNameLower};
	}
	
    </#if>	
	</#list>
</#macro>

<#macro generateJavaOneToMany>
	<#list table.exportedKeys.associatedTables?values as foreignKey>
	<#assign fkSqlTable = foreignKey.sqlTable>
	<#assign fkTable    = fkSqlTable.className>
	<#assign fkPojoClass = fkSqlTable.className>
	<#assign fkPojoClassVar = fkPojoClass?uncap_first>
	
	private List<${fkPojoClass}> ${fkPojoClassVar}s = new LinkedList<${fkPojoClass}>();
	public void set${fkPojoClass}s(List ${fkPojoClassVar}){
		this.${fkPojoClassVar}s = ${fkPojoClassVar};
	}
	
	public List<${fkPojoClass}> get${fkPojoClass}s() {
		return ${fkPojoClassVar}s;
	}
	
	</#list>
</#macro>

<#macro generateJavaManyToOne>
	<#list table.importedKeys.associatedTables?values as foreignKey>
	<#assign fkSqlTable = foreignKey.sqlTable>
	<#assign fkTable    = fkSqlTable.className>
	<#assign fkPojoClass = fkSqlTable.className>
	<#assign fkPojoClassVar = fkPojoClass?uncap_first>	
	private ${fkPojoClass} ${fkPojoClassVar};	
	public void set${fkPojoClass}(${fkPojoClass} ${fkPojoClassVar}){
		this.${fkPojoClassVar} = ${fkPojoClassVar};
	}	
	
	public ${fkPojoClass} get${fkPojoClass}() {
		return ${fkPojoClassVar};
	}
	
	</#list>
</#macro>
 }