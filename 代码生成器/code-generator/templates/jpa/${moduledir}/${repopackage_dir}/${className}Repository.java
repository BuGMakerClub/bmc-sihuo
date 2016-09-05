<#assign className = table.className>
<#assign classNameLower = className?uncap_first>
<#assign sqlName = table.sqlName>
package ${repopackage};

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import ${modelpackage}.${className};

@RepositoryRestResource(collectionResourceRel="${classNameLower}Repo", path="${className}Repo")
public interface ${className}Repository extends PagingAndSortingRepository<${className}, Integer> {

	@Query("SELECT C FROM ${className} C WHERE C.sid = ?1 AND C.delFlag = 1")
	${className} findBySid(int sid);
}