<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${actionpackage};

import ${corepackage}.web.action.BaseActionSupport;
import ${servicepackage}.entity.${className};

public class ${className}Action extends BaseActionSupport<${className}> {
	private static final long serialVersionUID = 5454155825314635342L;
			
 }

