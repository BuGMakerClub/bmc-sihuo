<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/tag-lib.jsp" %>
<%@ taglib uri="/utils-tags" prefix="u" %>

<script type="text/javascript">        

</script>

<form method="post" id="${classNameLower}ViewForm">
    <div class="clsViewDiv">
        <table class="clsTbView" align="center">
			<tr>
			<#assign varI = 1>		
			
			<#list table.columns as column>
			<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
					&& column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>					
			
                <td width="20%" class="clsViewCaption">${column.columnAlias?keep_before(" ")}：</td>
                <td width="30%" class="clsViewValue">
					<#if column.isDateTimeColumn>						
						 <s:date name="${column.columnNameLower}" format="yyyy-MM-dd"/>
					<#else>
						<s:property value="${column.columnNameLower}" />
					</#if>
                </td>
            <#if varI%2==0>
			</tr>
			<tr>			
			</#if>
			
			<#assign varI =varI+1>
			</#if>	
			</#list>
			</tr>
        </table>
    </div>
    <table class="clsEditOperationButtonTbl">
        <tr>
            <td >
                <input type="button" class="button btn_cancel"
                       onclick="javascript:closePopupDialogDirect('${classNameLower}ViewDialog');" value="关闭"/>
            </td>
        </tr>
    </table>
</form>