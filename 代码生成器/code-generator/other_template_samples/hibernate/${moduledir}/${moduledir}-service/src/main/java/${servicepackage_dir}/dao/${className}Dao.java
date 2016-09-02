<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${servicepackage}.dao;

import ${corepackage}.dao.BaseDao;
import ${servicepackage}.entity.${className};

public interface ${className}Dao extends BaseDao<${className}> {
}