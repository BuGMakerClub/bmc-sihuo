<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/tag-lib.jsp"%>
<%@ taglib uri="/utils-tags" prefix="u" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <%@ include file="/common/head.jsp"%>
    <%@ include file="/common/resources-include.jsp"%>
    
    <script type="text/javascript">
        $().ready(function() {
			<#list table.columns[1..4] as column>
			<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
					&& column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>					
				<#if column.isDateTimeColumn>														
						initCalendar('search_${column.columnNameLower}');			
				</#if> 
			</#if>	
			</#list>
	
            var formID = '${classNameLower}Form';   //
            var rls= {               
            };
            var supplementOption ={   //
                submitHandler : function(form) {
                    submitSearchRequest(formID,'${classNameLower}ListDiv');
                    return false;
                }
            };
            app_validate(formID,rls,'',supplementOption);

        });

    </script>
</head>
<body>
<div class="clsSearchDiv">
    <form method="post" id="${classNameLower}Form"
          action="${base}/${jspModule_dir}/${jspBaseName}!findByPage.action">
        <input type="hidden" name="qm.order" value="sid asc">
        <table class="clsSearchTbl">
			<tr>
				<#list table.columns[1..4] as column>
					<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
							&& column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>            						
					<!-- Add your search fields -->
					<td class="input_name">${column.columnAlias?keep_before(" ")}：</td>
					<td>
						<#if column.isDateTimeColumn>						
						 <input type="text" class="textinput" name="qm.${column.columnNameLower}" size="10" id="search_${column.columnNameLower}" readonly="true"
								value="<s:date name="${column.columnNameLower}" format="yyyy-MM-dd"/>">
						<#else>
							<s:textfield name="qm.${column.columnNameLower}" id="search_${column.columnNameLower}" maxLength="20" size="20"  cssClass="textinput"></s:textfield>
						</#if>						
					</td>			
					</#if>	
				</#list>            				
            </tr>
			<tr>
				<td>
                    <input type="submit" value="查询" class="button">
					<input type="reset" value="重置" class="button1">
                </td>
			</tr>
        </table>
    </form>
</div>
<table width="100%">
    <tr>
        <td align="center">
            <table width="100%">
                <tr>
                    <td align="left">
                        <div id="${classNameLower}ListDiv" class="cssListDiv"></div>
                        <script type="text/javascript">
                            ajaxGet("${base}/${jspModule_dir}/${jspBaseName}!findByPage.action", "${classNameLower}ListDiv");
                        </script>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<%@ include file="/common/foot.jsp"%>
</body>
</html>