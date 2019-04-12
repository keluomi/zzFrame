
/**
 * 判断是否在AllPage 页面上
 * @returns {boolean}
 */
function isInAllPage(){
    return true;
    //return $(".easyui-tabs" , parent.window).length > 0;
}



/**
 * 日期格式化
 * @param val
 * @param row
 * @returns {*}
 */
function dateFmt(val,row){
    if(null==val||""==val){
        return "";
    }
    if( typeof(val) === "number"){
        return changeDateFormat(val);
    }else {
        return val.substring(0, 10);
    }
}



function changeDateFormat(cellval) {
    var dateVal = cellval + "";
    if (cellval != null) {
        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
        return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
    }
}



/**
 * 金额格式化
 * @param val
 * @param r
 * @returns {String}
 */
function moneyFmt(val, r){
    return FormatMoney(val,4,true);
}