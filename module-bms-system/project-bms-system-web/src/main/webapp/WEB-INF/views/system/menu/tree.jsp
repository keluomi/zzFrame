<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/taglibs.jspf" %>
<bms:contentHeader title="zz1" />



<div region='north'>
    <div class="navigation">


        <span class="words"><a>${ breadcrumb }</a></span>


    </div>
    <div id="content-sec" style="padding: 10px 10px 0 10px;">
        <!-- 筛选条件表单开始 -->
        <form id="searchForm" onsubmit="return false" >


        </form>




        <div class="btn-bar" style="margin-left: -10px;">



                <shiro:hasPermission name="system.menu:detail">
                    <button type="button" class="btn btn-primary btn-sm" onclick="toDetail()">
                        <svg class="icon" aria-hidden="true">
                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href=""></use>
                        </svg>
                        <span>查看 </span>
                    </button>
                </shiro:hasPermission>



        </div>



    </div>

</div>

<div region='center' style="padding: 0px 10px 0 10px;">
    <table id='tableData-${ tableId }' class='easyui-treegrid' method='post' fit='true' pagination='true' fitColumns="true"
           border='true' sortName="id" sortOrder="desc" style="width: 100%;">
        <thead>
        <tr>
            <th field='menuName' align="left" width="1" sortable='false' formatter='titleAllFmt' >菜单名称</th>
            <th field='menuCode' align="left" width="1" sortable='false'  >菜单编号</th>
            <th field='menuSort' align="right" width="1" sortable='true'  >菜单顺序</th>
            <th field='menuUrl' align="left" width="1" sortable='false'  >菜单地址</th>
            <th field='menuMsg' align="left" width="1" sortable='false'  >菜单提示信息</th>
            <th field='menuIcon' align="left" width="1" sortable='false'  >菜单图标</th>
            <th field='menuRedirect' align="left" width="1" sortable='false'  >跳转目标</th>
            <th field='shortcutName' align="left" width="1" sortable='false'  >快捷菜单</th>
            <th field='level' align="right" width="1" sortable='true'  >层级</th>
            <th field='remark' align="left" width="1" sortable='false'  >备注</th>



        </tr>
        </thead>
    </table>
</div>




<script>
    var tableid = "tableData-${ tableId }";
    var tree_field = "menuName";
    var id_field = "id";


    var queryString = "${ queryString }";
    var listUrl = "";

</script>



<bms:contentJS />

<script src="${ staticUrl }/statics2/js/project/listCommon.js"></script>
<script src="${ staticUrl }/statics2/js/project/tree.js"></script>

<shiro:hasPermission name="system.menu:importExcel">
<script src="${ staticUrl }/statics2/js/project/common-import-excel.js"></script>
</shiro:hasPermission>



<script language="JavaScript">




</script>

<bms:contentFooter />

