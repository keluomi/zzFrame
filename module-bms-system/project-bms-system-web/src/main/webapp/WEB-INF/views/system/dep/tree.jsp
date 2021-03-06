<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/taglibs.jspf" %>
<bms:contentHeader />



<div region='north'>
    <div class="navigation">


        <span class="words"><a>${breadcrumb}</a></span>


    </div>
    <div id="content-sec" style="padding: 10px 10px 0 10px;">
        <!-- 筛选条件表单开始 -->
        <form id="searchForm" onsubmit="return false" >


        </form>


        <!-- 工具栏 -->
        <div class="btn-bar" style="margin-left: -10px;">

            <shiro:hasPermission name="system.user:add">
            <button type="button" class="btn btn-primary btn-sm" onclick="toAdd()">
                <i class="fa fa-plus"></i>
                <span>新建 </span>
            </button>
            </shiro:hasPermission>


            <shiro:hasPermission name="system.user:delete">
            <button type="button" class="btn btn-primary btn-sm" url="" onclick="doDelete('url')">
                <i class="fa fa-trash"></i>
                <span>删除 </span>
            </button>
            </shiro:hasPermission>




            <shiro:hasPermission name="system.user:exportExcel">
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
    <!-- 筛选条div结束 -->
</div>

<div region='center' style="padding: 0px 10px 0 10px;">



    <table id='tableData-${tableId}' class='easyui-treegrid' method='post' fit='true' pagination='true' fitColumns="true"
           border='true' sortName="id" sortOrder="desc" style="width: 100%;">
        <thead>
        <tr>

            <th data-options="field:'depName'" width="220" align="left" formatter='titleFmt'>部门名称</th>
            <th data-options="field:'depCode'" width="100" >部门编号</th>
            <th data-options="field:'organName'" width="100" >所属机构</th>
            <th data-options="field:'leadUserName'" width="100" >部门负责人</th>
            <th data-options="field:'depStatusName'" width="100" >状态</th>


        </tr>
        </thead>
    </table>
</div>




<script>
    var tableid = "tableData-${tableId}";
    var tree_field = "depName";
    var id_field = "id";

    var inAllPage = "${inAllPage}";
    var queryString = "${ queryString }";
    var treeUrl = "";
</script>



<bms:contentJS />

<script src="${staticUrl}/statics2/js/project/listCommon.js"></script>

<script src="${staticUrl}/statics2/js/project/tree.js"></script>
<script src="${staticUrl}/statics2/js/project/common-import-excel.js"></script>

<script language="JavaScript">


</script>

<bms:contentFooter />

