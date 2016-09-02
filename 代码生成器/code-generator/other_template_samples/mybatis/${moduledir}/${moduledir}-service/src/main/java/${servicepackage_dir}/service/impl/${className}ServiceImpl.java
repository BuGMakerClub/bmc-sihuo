<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${servicepackage}.service.impl;


import ${corepackage}.service.BaseCRUDService;
import ${servicepackage}.entity.${className};
import ${servicepackage}.service.${className}Service;

import org.springframework.stereotype.Service;

@Service("${classNameLower}Service")
public class ${className}ServiceImpl extends BaseCRUDService<${className}> implements ${className}Service {
}
