<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${servicepackage}.dao.impl;

import ${corepackage}.dao.MybatisGenericDaoImpl;
import ${servicepackage}.dao.${className}Dao;
import ${servicepackage}.entity.${className};

public class ${className}DaoImpl extends MybatisGenericDaoImpl<${className}> implements ${className}Dao {
}