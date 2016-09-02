<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${servicepackage}.dao.mapper;

import ${corepackage}.dao.BaseMapper;
import ${servicepackage}.entity.${className};

public interface ${className}Mapper extends BaseMapper<${className}> {
}