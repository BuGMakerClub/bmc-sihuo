<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${servicepackage}.service;

import ${corepackage}.service.BaseService;
import ${servicepackage}.entity.${className};


public interface ${className}Service extends BaseService<${className}> {
}
