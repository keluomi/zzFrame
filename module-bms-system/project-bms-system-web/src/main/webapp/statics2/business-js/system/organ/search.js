
/**
* 打开机构选择窗口
* callId	回显数据ID的控件ID
* callName	回显数据名称的控件ID
* clearId	清空选项的控件ID
* callBack 选择后的回调函数
* @returns
*/
function openSystemOrganWin(config, callBack)
{



    var url = config.url || $AppContext + '/system/organ/tree';
    var tableTemple = '<div style="height: 350px; overflow-y:auto; overflow-x:hidden;" class="_w_height">' +
    '<table idField="id" treeField="organName" class="_dataContorl">'  +
        '	<thead>'  +
        '		<tr>' ;

                tableTemple += '			<th field="organName" align="left"  >机构名称</th>' ;
                tableTemple += '			<th field="organCode" align="left"  >机构代码</th>' ;


    tableTemple +='		</tr>'+
        '	</thead>' +
        '</table>' +
    '</div>';

    var options = config || {};
    options.width = 430;
    options.height = 450;
    options.id = "_SystemOrganList" + config.callId;
    options.url = url;
    options.callBack = callBack;
    options.sampleData = {id: "id", name: "organName"};
    options.htmlTemple = tableTemple;
    options.compiledSuccess = function(){
        // 查询按钮事件
        dialog.tableTemple.find("button").bind("click", function(){
            search();
        });

        dialog.tableTemple.find('input').keydown(function(e){
            if(e.keyCode==13){
                search();
            }
        });

        // 状态发生改变查询
        dialog.tableTemple.find("select").bind("change", function(){
            search();
        });

        function search(){
            // 获取查询参数
            var params = options.params || {};





            // 调用查询方法
            dialog.tableTemple.search(params);
        }
    };
    var dialog = DialogTools.getDialog(options);

    return dialog;

};



//机构选择控件
$.fn.OpenSystemOrganSelectWin = function(config, callBack){
    var win = openSystemOrganWin(config, callBack);
    $(this).unbind("click");
    $(this).bind("click", function(){
        win.show();
    });
    return win;
};
