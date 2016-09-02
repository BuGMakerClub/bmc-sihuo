<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/tag-lib.jsp" %>
<%@ taglib uri="/utils-tags" prefix="u" %>

<script type="text/javascript">


$().ready(function () {	 
	<#list table.columns as column>
	<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
			&& column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>					
		<#if column.isDateTimeColumn>														
				initCalendar('${column.columnNameLower}');			
		</#if> 
	</#if>	
	</#list>
	
	
    var formID = "${classNameLower}EditForm";
    var rls = {
        
    };

    var supplementOption = {   //补充选项
        submitHandler:function (form) {
						globalSubmitHandler(form, function (json) {
                            closePopupDialogDirect('${classNameLower}EditDialog');
                            refreshDiv("${classNameLower}ListDiv");
                        });
        }
    };
    app_validate(formID, rls, null, supplementOption);

});

</script>


<div class="clsEditDiv">
<form action='${base}/${jspModule_dir}/${jspBaseName}!<s:property value="dynaSaveMethod"/>.action' method="post" id="${classNameLower}EditForm" >
<s:hidden name="sid"/>
<s:hidden name="version"/>
<table class="clsTbInput" align="center">
	<tr>
	<#assign varI = 1>		
			
	<#list table.columns as column>
	<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
			&& column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>					
		<td  class="clsEditCaption">${column.columnAlias?keep_before(" ")}：</td>
        <td class="clsEditValue">
			<#if column.isDateTimeColumn>
                <input type="text" class="textinput" name="${column.columnNameLower}" size="10" id="${column.columnNameLower}" readonly="true"
                       value="<s:date name="${column.columnNameLower}" format="yyyy-MM-dd"/>">
			<#else>
				<s:textfield name="${column.columnNameLower}" id="${column.columnNameLower}" maxLength="20" size="20"  cssClass="textinput"></s:textfield>
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


<table class="clsEditOperationButtonTbl">
    <tr>
        <td>
            <input type="submit" class="button btn_save" value="保存"/>
            <input type="button" class="button btn_cancel"
                   onclick="javascript:closePopupDialogDirect('${classNameLower}EditDialog');" value="关闭"/>
        </td>
    </tr>
</table>
</form>
</div>