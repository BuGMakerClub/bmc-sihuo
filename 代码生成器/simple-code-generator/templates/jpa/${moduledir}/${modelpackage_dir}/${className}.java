<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign sqlName = table.sqlName>
package ${modelpackage};

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="${sqlName}")
@NamedQuery(name="${className}.findAll", query="SELECT s FROM ${className} s")
public class ${className} implements Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
			
<#list table.columns as column>

<#if column.javaType == 'java.util.Date'>
	@Temporal(TemporalType.TIMESTAMP)
</#if>
<#if column.columnNameLower == 'sid'>
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private ${column.javaType} ${column.columnNameLower};
</#if>	
<#if column.columnNameLower != 'sid'>
	@Column(name="${column.sqlName}")
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
    public void set${column.columnName}(${column.javaType} value) {
		this.${column.columnNameLower} = value;
	}
	
	public ${column.javaType} get${column.columnName}() {
		return this.${column.columnNameLower};
	}
	</#list>
</#macro>

<#macro generateJavaOneToMany>
	<#list table.exportedKeys.associatedTables?values as foreignKey>
	<#assign fkSqlTable = foreignKey.sqlTable>
	<#assign fkTable    = fkSqlTable.className>
	<#assign fkPojoClass = fkSqlTable.className>
	<#assign fkPojoClassVar = fkPojoClass?uncap_first>
	
	private Set<${fkPojoClass}> ${fkPojoClassVar}s = new HashSet<${fkPojoClass}>(0);
	public void set${fkPojoClass}s(Set ${fkPojoClassVar}){
		this.${fkPojoClassVar}s = ${fkPojoClassVar};
	}
	
	public Set<${fkPojoClass}> get${fkPojoClass}s() {
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