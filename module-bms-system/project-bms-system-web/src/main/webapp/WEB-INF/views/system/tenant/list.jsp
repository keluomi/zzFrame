<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/taglibs.jspf" %>
<bms:contentHeader />

<div region='north'>
    <c:if test="${breadcrumb != ''}"><div class="navigation"><span class="words"><a>${ breadcrumb }</a></span></div></c:if>
    
    <div id="content-sec" style="padding: 10px 10px 0 10px;">
        <!-- 筛选条件表单开始 -->
        <form id="searchForm" onsubmit="return false" >

            <div id='toolbar' style='height: 40px;     border-bottom: 2px solid #0896ba; '>
                <div class="form-inline" role="form">

                    <div class="form-group" style='margin-left: -15px;'>
                        <input  class="form-control input-sm" style='width: 300px;'
                                id="tenantCode" name='tenantCode' placeholder='企业编号' onkeydown='enterKeySearch(event, search);'>
                    </div>
                    <div class="form-group">
                        <input  class="form-control input-sm" style='width: 300px;'
                                id="tenantName" name='tenantName' placeholder='企业名称' onkeydown='enterKeySearch(event, search);'>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-success btn-sm" onclick='search();'><i class="fa fa-search"></i>&nbsp;查询</button>
                    </div>
                </div>
            </div>

        </form>

        <div class="btn-bar" style="margin-left: -10px;">


            <shiro:hasPermission name="system.tenant:add">
                <button type="button" class="btn btn-primary btn-sm" onclick="toAdd()">
                    <i class="fa fa-plus"></i>
                    <span>新建 </span>
                </button>
            </shiro:hasPermission>


            <shiro:hasPermission name="system.tenant:delete">
                <button type="button" class="btn btn-primary btn-sm" url="" onclick="doDelete('url')">
                    <i class="fa fa-trash"></i>
                    <span>删除 </span>
                </button>
            </shiro:hasPermission>



            <shiro:hasPermission name="system.tenant:exportExcel">
                <div class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-download"></i>
                        Excel导出 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">



                        <li>
                            <a href="${ctx}/${currParentUrl}/csv/export" class="export" >
                                <i class="fa fa-download"></i>导出CSV
                            </a>
                        </li>
                        <li>
                            <a href="${ctx}/${currParentUrl}/hssf/export" class="export" >
                                <i class="fa fa-download"></i>导出Excel2003
                            </a>
                        </li>

                        <li>
                            <a href="${ctx}/${currParentUrl}/sxssf/export" class="export" >
                                <i class="fa fa-download"></i>导出Excel2007
                            </a>
                        </li>
                    </ul>
                </div>
            </shiro:hasPermission>
        </div>
    </div>
</div>

<div region='center' style="padding: 0px 10px 0 10px;">
    <table id='tableData-${ tableId }' class='easyui-datagrid' method='post' fit='true' pagination='true' fitColumns="true"
           border='true' sortName="id" sortOrder="desc" style="width: 100%;">
        <thead>
        <tr>
            <th field="ck" checkbox="true"></th>
            <th field='tenantName' align="left" width="1" sortable='false' formatter='titleFmt' >企业名称</th>
            <th field='tenantCode' align="left" width="1" sortable='false'  >企业编号</th>
            <th field='tenantAddr' align="left" width="1" sortable='false'  >企业地址</th>
            <th field='linkTel' align="left" width="1" sortable='false'  >联系电话</th>
            <th field='leadUserName' align="left" width="1" sortable='false'  >法人姓名</th>
            <th field='website' align="left" width="1" sortable='false'  >官网</th>
        </tr>
        </thead>
    </table>
</div>

<script>
    var tableid = "tableData-${ tableId }";

    var inAllPage = "${inAllPage}";
    var queryString = "${ queryString }";
    var listUrl = "";
</script>

<bms:contentJS />

<script src="${ staticUrl }/statics2/js/project/listCommon.js"></script>
<script src="${ staticUrl }/statics2/js/project/list.js"></script>

<shiro:hasPermission name="system.tenant:importExcel">
<script src="${ staticUrl }/statics2/js/project/common-import-excel.js"></script>
</shiro:hasPermission>


<script language="JavaScript">


    $(function() {


    });





</script>

<bms:contentFooter />

