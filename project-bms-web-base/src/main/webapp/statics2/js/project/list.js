
/**
 * 初始化 easyUI 列表
 */
function initPage() {



    //加载table列表数据
    var initUrl =  ctx+dataUrl+"/list?"+queryString;
    var paramObj = {};
    if (queryString != ""){
        var paramArr = queryString.split("&");
        for (var i=0; i<paramArr.length;i++){
            var o = paramArr[i].split("=");
            paramObj[o[0]] = o[1];
        }
    }
    var formData = getQueryParams();
    for (var k in formData){
        if (paramObj[k] != undefined){
            delete formData[k];
        }
    }
    var ajaxUrl = initUrl;
    if(listUrl != undefined && listUrl.length > 0){
        ajaxUrl = listUrl;
    }
    $('#'+tableid).datagrid({
        url : ajaxUrl,
        queryParams: formData,
        emptyMsg: '<img style="margin-top:50px;" src="'+staticUrl+'/statics2/image/empty.png">',
        onDblClickRow: function(index, row){
            toUpdate(row.id)
        }
    });
}
