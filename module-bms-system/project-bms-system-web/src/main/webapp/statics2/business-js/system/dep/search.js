
/**
* 打开部门选择窗口
* callId	回显数据ID的控件ID
* callName	回显数据名称的控件ID
* clearId	清空选项的控件ID
* callBack 选择后的回调函数
* @returns
*/
function openSystemDepWin(config, callBack)
{



    var url = config.url || $AppContext + '/system/dep/tree';
    var tableTemple = '<div style="height: 350px; overflow-y:auto; overflow-x:hidden;" class="_w_height">' +
    '<table idField="id" treeField="depName" class="_dataContorl">'  +
        '	<thead>'  +
        '		<tr>' ;

                tableTemple += '			<th field="depName" align="left"  >部门名称</th>' ;
                tableTemple += '			<th field="depCode" align="left"  >部门代码</th>' ;
                tableTemple += '			<th field="organName" align="left" >所属机构</th>' ;
                tableTemple += '			<th field="depAddr" align="left"  >部门地址</th>' ;


    tableTemple +='		</tr>'+
        '	</thead>' +
        '</table>' +
    '</div>';

    var options = config || {};
    options.width = 430;
    options.height = 450;
    options.id = "_SystemDepList" + config.callId;
    options.url = url;
    options.callBack = callBack;
    options.sampleData = {id: "id", name: "depName"};
    options.htmlTemple = tableTemple;
    var dialog = DialogTools.getDialog(options);

    return dialog;

};



//部门选择控件
$.fn.OpenSystemDepSelectWin = function(config, callBack){
    var win = openSystemDepWin(config, callBack);
    $(this).unbind("click");
    $(this).bind("click", function(){
        win.show();
    });
    return win;
};
