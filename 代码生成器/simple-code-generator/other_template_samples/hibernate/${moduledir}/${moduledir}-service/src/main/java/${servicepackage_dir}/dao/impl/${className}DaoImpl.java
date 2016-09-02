<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${servicepackage}.dao.impl;

import ${corepackage}.dao.HibernateGenericDaoImpl;
import ${servicepackage}.dao.${className}Dao;
import ${servicepackage}.entity.${className};

public class ${className}DaoImpl extends HibernateGenericDaoImpl<${className}> implements ${className}Dao {
}