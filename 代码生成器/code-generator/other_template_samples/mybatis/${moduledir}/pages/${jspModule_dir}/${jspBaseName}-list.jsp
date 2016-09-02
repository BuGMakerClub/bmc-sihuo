<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/tag-lib.jsp" %>
    
    <script type="text/javascript">

        function changeStatus(sid, status) {
            var confirmMessage = "";
            if (status == "0") {
                confirmMessage = "确定启用？";
            } else if (status == "1") {
                confirmMessage = "确定停用？";
            }
            if (confirm(confirmMessage)) {
                var url = "${base}/${jspModule_dir}/${jspBaseName}!update.action";
                var params = "sid=" + sid + "&status=" + status;
                $.post(url, params, function (data, textStatus) {
                    refreshDiv("${classNameLower}ListDiv");
                })
            }

        }
    </script>
	
	<!--表格蓝色头部-->
	<div class="ListHead"><span></span></div>

    <!--按钮操作区域  -->
    <!--  -->
    <div class="List_control">
        <input type="button" id="butCreate" value="新增" class="button btn_add"
               onclick="popupDialog('${classNameLower}EditDialog','${base}/${jspModule_dir}/${jspBaseName}!input.action','新增',450,300)">
    </div>

    <table class="clsTbList">
        <thead>
        <tr>
            <th class="countColumn">序号</th>
			<#list table.columns as column>
				<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
						&& column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>            		
			<th id='${column.columnNameLower}SortHeader'  class="clsTableSortable" onclick="sortSearch('${classNameLower}Form','${classNameLower}ListDiv','${column.columnNameLower}SortHeader','${column.sqlName}')">${column.columnAlias?keep_before(" ")}</th>
				</#if>	
			</#list>
            <th width="170px">操作</th>
        </tr>
        </thead>
        <tbody>
        <s:iterator value="#request.page.resultList" status="statusCount" id="entity">
		<tr>
			<td class="countColumn">
				<s:property value="#request.page.offset+#statusCount.count"/>
			</td>
			
			<#list table.columns as column>
			<#if column.columnNameLower != 'sid' && column.columnNameLower !='createdBy' && column.columnNameLower !='createdDt' && column.columnNameLower !='version'
					&& column.columnNameLower !='updatedBy' && column.columnNameLower !='updatedDt' && column.columnNameLower !='delFlg'>										
			<td >
				<#if column.isDateTimeColumn>
				 <s:date name="${column.columnNameLower}" format="yyyy-MM-dd"/>
				<#else>
					<s:property value="${column.columnNameLower}" />
				</#if>
			</td>
			</#if>	
			</#list>                              
			
			<td>
				<!-- 操作-->
				<a href="#"
				   onclick="javascript:popupDialog('${classNameLower}EditDialog','${base}/${jspModule_dir}/${jspBaseName}!input.action?sid=<s:property value="sid"/>','编辑',500,300)">编辑</a>
				<a href="#"
				   onclick="javascript:popupDialog('${classNameLower}ViewDialog','${base}/${jspModule_dir}/${jspBaseName}!view.action?sid=<s:property value="sid"/>','查看',500,300)">查看</a>
						
				<s:if test='status==1'>
					<a href="#" onclick="javascript:changeStatus('<s:property value="sid"/>','0')">启用</a>
				</s:if>
				<s:else>
					<a href="#" onclick="javascript:changeStatus('<s:property value="sid"/>','1')">停用</a>
				</s:else>				
			</td>
		</tr>
        </s:iterator>
        </tbody>
    </table>
    <q:page targets="${classNameLower}ListDiv"/>
    <%@ include file="/common/foot.jsp" %>