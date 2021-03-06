
var dlgData;
var $image = $('#image');
var avatar_callback;



var msgInterval = null;

/**
 * 初始化截图控件
 */
$(function ()
{
    'use strict';//表示强规则
    var options =
        {
            zoomable: true,
            dragMode: "move",
            viewMode:  3,
            preview: '.img-preview',//预览区域
        };

    //根据传入参数控制截图框大小
    options.built = function()
    {
        $image.cropper('setAspectRatio', $("#aspectRatioVal").val());
        var croppBoxData = {width: 151, height: 171};
        $image.cropper('setCropBoxData', croppBoxData);
    };

    // 响应 选框 事件
    $image.on({}).cropper(options);

    // 选择 图片 预览图片
    var $inputImage = $('#inputImage');
    var URL = window.URL || window.webkitURL;
    var blobURL;
    if (URL)
    {
        $inputImage.change(function()
        {
            var file = this.files;
            if (!$image.data('cropper'))
            {
                return;
            }

            if (file && file.length)
            {
                file = file[0];
                if (/^image\/\w+$/.test(file.type))
                {
                    blobURL = URL.createObjectURL(file);
                    $image.one('built.cropper', function()
                    {
                        // Revoke when load complete
                        URL.revokeObjectURL(blobURL);
                    }).cropper('reset').cropper('replace', blobURL);
                    //$inputImage.val('');
                }
                else
                {
                    window.alert('请选择一张图片.');
                }
            }
        });
    }
    else
    {
        $inputImage.prop('disabled', true).parent().addClass('disabled');
    }
});

//图片上传弹出框
function initCropImgDialog(callback)
{
    resetCrop();

    avatar_callback = callback;
    if (null == dlgData)
    {
        $("#cropWidthVal").val(251);
        $("#heightVal").val(271);
        $("#aspectRatioVal").val(8 / 10);
        dlgData = iDialog(
            {
                content: $('#modal')[0], lock: true, effect: 'i-super-scale', width: 770, height: 490,
                btn: {ok: {val: '保存', type: 'green', click: cropImgUpload}, cancel: {val: '取消', click: resetCrop}}
            });
    }

    dlgData.$title.html('图片上传');
    dlgData.show();
}

//重置图片控件
function resetCrop()
{
    $("#image").attr('src', '');
    $("#inputImage").val('');
    $(".img-preview").html('');
    $(".cropper-container").remove();
}

//放大待截取图片
$("#zoomIn").click(function()
{
    $image.cropper("zoom", 1);
});

$("#zoomOut").click(function()
{
    $image.cropper("zoom", -1);
});

//缩小待截取图片
$("#zoomLeft").click(function()
{
    $image.cropper("rotate", -45);
});

$("#zoomRight").click(function()
{
    $image.cropper("rotate", 45);
});

//截取并上传
function cropImgUpload(callback)
{
    var option = {width: $("#cropWidthVal").val(), height: $("#cropHeightVal").val()};
    //截取方法
    var result = $image.cropper("getCroppedCanvas", option);
    var flag=true;
    var avatarImage = $("#avatarImage").val();
    $.ajax(
        {
            url: $AppContext + '/oss/image/uploadImage?businessTempId=' + avatarImage + '&businessFileType=avatarImage', type: 'post', data: {"imageData": result.toDataURL().toString()}, dataType: 'json', async: false,
            success: function (data)
            {
                if(data.success) {
                    var obj = data.obj;
                    if (obj.id) {
                        avatar_callback(obj);
                        resetCrop();
                        $("#modal").modal('hide');
                    }
                    else {
                        error("设置失败");
                        flag = false;
                    }
                }else {
                    error(data.msg);
                }
            }
        });

    return flag;
}


/**
 * Windows Resize事件
 */
$(window).resize(function()
{
    sortShortcutMenu();
});

/**
 * jQuery初始化
 */
$(function()
{


    // 刷新头像
    //$('#imgUserAvatar').prop('src', getUserAvatarUrl('default.png', 1));
    // 初始化左侧菜单
    initMenu();

    //todo 可以放开
    // 初始化顶部快捷菜单
    //initShortcutMenu();

    // 初始化模块搜索功能
    $("#func-search").keyup(function()
    {
        var $this = $(this);
        var _value = $this.val();
        if (_value == '')
            $(".search-menu").hide();
        else
            $(".search-menu").show();
    });

    // 点击空白区域关闭快捷菜单
    $(window).click(function(e)
    {
        var str = e.target.className.toString();
        if (str.indexOf("fa-plus") > -1)
        {
            if ($(".nav-more").is(":hidden"))
                $(".nav-more").show();
            else
            if (!$(".nav-more").is(":hidden"))
                $(".nav-more").hide();
        }
        else
            $(".nav-more").hide();
    });

    // 查询未读消息
    loadMyMessageCount(notReadCount);


    //启动 websocket , 获取通知个数
    startMyNotify();

});

// 搜索功能模块，非IE内核浏览器调用方法
function OnInput()
{
    OnPropChanged();
}

//搜索功能模块，IE内核浏览器调用方法
function  OnPropChanged()
{
    var content = $('#func-search').val();
    var htmls = '';
    for (var i = 0; i < $("#ul_cartList li").length; i++)
    {
        var spanElement = $("#ul_cartList li a")[i];
        // console.log(spanElement.title);
        if (spanElement.title.indexOf(content) >= 0)
        {
            if (spanElement.href.indexOf('/') != -1)
            {
                htmls += '<li><a href="'+spanElement.href+'">'+spanElement.title+'</a></li>'
            }
        }
    }

    $('#sMenu').html(htmls);
}

//----------------------------------------------------------------------------------------------
//		快捷菜单
//----------------------------------------------------------------------------------------------



/**
 * 初始化顶部快捷菜单
 */
function initShortcutMenu()
{
    // 初始化Sortable(grouping)
    Sortable.create(document.getElementById('nav-bar'),
        {
            group: "omega", //group相同才能互相拖拽
            animation: 150, //动画参数
            // 拖拽时候添加有新的节点的时候触发该事件
            onAdd: function (evt) {sortShortcutMenu();},
            // 拖拽更新节点位置触发该事件
            onUpdate: function (evt) {},		// 删除拖拽节点的时候触发该事件
            onRemove: function (evt)
            {
                sortShortcutMenu();
                // 拖拽删除,删掉了最后一个,重新计算placeholder块儿的宽度
                var LAST = $("#nav-bar").children().length;
                if (LAST == 0)
                {
                    var placeholderWidth = 42 + evt.item.textContent.length * 13;
                    $("#drag-placeholder").css("width",placeholderWidth);
                    $(".last-nav").css({"left": placeholderWidth + 50 + "px", "width": placeholderWidth + "px"});
                }
            },
            // 开始拖拽触发该事件
            onStart: function(evt) {},
            // 发生排序触发该事件
            onSort: function(evt) {saveShortcutLayout();},
            //拖拽完毕之后触发该事件
            onEnd: function(evt) {}
        });

    Sortable.create(document.getElementById('nav-more'),
        {
            group: "omega", //group相同才能互相拖拽
            animation: 150 //动画参数
        });

    // 传参数修正导航个数的问题
    sortShortcutMenu();

}

// 初始化和调整窗口时都要调用的公共事件
function sortShortcutMenu(obj)
{
    // 左侧导航可x显示宽度
    var collapseWidth = $(window).width() - 230;
    var navPersonalWidth = $(".nav-personal").width();
    var menuWidth = parseInt(collapseWidth - navPersonalWidth);
    // 初始化实际导航宽度，初始值为"home"按钮的宽度
    var navWidth = 50;
    // 两个导航list
    var $eachLi = $("#nav-bar").children();
    var $eachLiMore = $("#nav-more").children();

    // 导航总个数
    var LENGTH = $eachLi.length;
    // 导航数为零
    if (LENGTH == 0)
    {
        $("#drag-placeholder").show();
        var dpWidth = $("#drag-placeholder")[0].offsetWidth;
        $(".nav-more").addClass("pos-r");
        $(".last-nav").css({"left": dpWidth + 50 + "px", "width": dpWidth + "px"});
    }
    else if (LENGTH == 1)
    {
        $("#drag-placeholder").hide();
        var uniqueWidth = $eachLi.width();
        $(".last-nav").css({"left": uniqueWidth + 50 + "px", "width": (menuWidth - uniqueWidth - 50) + "px"});
    }
    else
    {
        $("#drag-placeholder").hide();
        // 遍历过程中调整最后的加号位置
        $eachLi.each(function(i, el)
        {
            navWidth += $(el).width();
            // 显示不全，则隐藏的快捷菜单露出一部分
            if (navWidth <= menuWidth && (menuWidth - navWidth) > (50 + 60))
            {
                $(".last-nav").css({"left": navWidth + 60 + "px", "width": (menuWidth - navWidth - 60) + "px"});
                if (i < 1)
                    $(".nav-more").addClass("pos-r");
                // 快捷菜单能够全部显示时
                else
                if(i + 1 == LENGTH)
                    $(".last-nav").css({"left": navWidth + "px", "width": (menuWidth - navWidth) + "px"});
                else
                    $(".nav-more").removeClass("pos-r");
            }
        });
    }
}

//----------------------------------------------------------------------------------------------
//		左侧菜单
//----------------------------------------------------------------------------------------------

/**
 * 初始化系统菜单
 */
function initMenu()
{

    // 顶部菜单 - 鼠标移动自动展示
    $('ul.nav li.dropdown').hover
    (
        function() {$(this).find('.dropdown-menu').stop(true, true).delay(10).fadeIn(200);},
        function() {$(this).find('.dropdown-menu').stop(true, true).delay(10).fadeOut(200);}
    );

    // 左侧导航菜单
    $(window).on("load",function()
    {

        addMenuEvent();
        // 菜单区域添加滚动条效果
        $(".menu").mCustomScrollbar(
            {
                autoHideScrollbar: true, theme: "light" /* dark,light,rounded 默认：light */
            });
    });
}

/**
 * 添加菜单点击事件
 */
function addMenuEvent()
{


    var $lis = $(".menu li");
    for (var i = 0; i < $lis.length; i++)
    {
        var curLi = $lis.eq(i);
        if (curLi.attr("menuLeaf")=='0')
            curLi.find("a").addClass("arrow").parent().attr('hasChild',"1").attr('num',0);
        else
            curLi.find("a").parent().attr('hasChild',"0").attr('num',0);

        // 1级大类添加右侧箭头
        if ('1' == curLi.attr('menuLevel'))
        {
            curLi.find("a").addClass("right-arrow");
        }

        var _thisMenuNo = curLi.attr("menuNodeNo");
        var children = curLi.siblings('[parentNodeNo=\'' + _thisMenuNo + '\']');

        for (var t = 0; t < children.length; t++){
            $(children[t]).find("a").addClass("right-arrow");
        }

    }

    $lis.click(function()
    {
        var $this = $(this);
        var $siblings = $this.siblings();
        var _thisMenuNo = $this.attr("menuNodeNo");
        var _hasChild = $this.attr('hasChild');
        // 焦点切换
        if (!$this.find("a").hasClass("active"))
        {
            $this.find("a").addClass("active");
            $siblings.find("a").removeClass("active");
        }

        if (_hasChild == '1')
        {
            var children = $this.siblings('[parentNodeNo=\'' + _thisMenuNo + '\']');

            // 菜单展开合并
            if ($this.find("a").hasClass('right-arrow'))
            {
                // 展开菜单
                for (var i = 0; i < children.length; i++)
                {
                    var child = $(children[i]);
                    var num = parseInt(child.attr('num'));
                    if(num == 0)
                        child.slideDown();
                    else
                    if (num > 0)
                    {
                        num = num - 1;
                        if (num == 0)
                            child.slideDown().attr('num', num);
                        else
                            child.attr('num', num);
                    }
                }

                $this.find("a").removeClass("right-arrow");

            } else if (!$this.find("a").hasClass('right-arrow'))
            {
                // 合并菜单
                for (var i=0;i<children.length;i++)
                {
                    var child = $(children[i]);
                    var myMenuNo = child.attr("menuNodeNo");
                    var subChild = child.siblings('[parentNodeNo=\'' + myMenuNo + '\']');
                    for (var t=0;t<subChild.length;t++){
                        var mchild = $(subChild[t]);
                        mchild.slideUp();
                    }

                    var num = parseInt(child.attr('num'));
                    child.slideUp().attr('num', num + 1);
                    child.find("a").addClass("right-arrow");
                }

                $this.find("a").addClass("right-arrow");
            }
        }
    });

    // 展开第一个大类菜单
    setTimeout(function()
    {
        $lis.eq(0).trigger('click');
    }, 100);
}

/**
 * 打开菜单链接
 */
function openMenu(url)
{
    if (url)
    {
        $("#ifrmWorkspace").attr("src", url);
    }
}

//----------------------------------------------------------------------------------------------
//		个人参数修改
//----------------------------------------------------------------------------------------------

var profileDlg;
/**
 * 修改个人参数
 */
function changeProfile()
{
    if (null == profileDlg)
    {
        profileDlg = iDialog(
            {
                content: $('#formProfile')[0], effect: 'i-super-scale', width: 500, lock: true,
                btn:
                    {
                        ok:
                            {
                                val: '保存', type: 'green', click: function(btn)
                                {
                                    if (!$("#formProfile").valid())
                                    {
                                        warn('保存失败：表单信息填写不完整！');
                                        return false;
                                    }

                                    // 校验修改密码逻辑
                                    var passwds = 0;
                                    if ($('input[name="origPassword"]').val().length > 0)
                                        passwds ++;

                                    if ($('input[name="newPassword"]').val().length > 0)
                                        passwds ++;

                                    if ($('input[name="confirmNewPassword"]').val().length > 0)
                                        passwds ++;

                                    if (passwds > 0 && 3 != passwds)
                                    {
                                        warn('请输入“原密码”、“新密码”和“确认新密码”3项信息才能修改密码。请检查您的输入！');
                                        return false;
                                    }

                                    $('#formProfile').ajaxSubmit(
                                        {
                                            success: function(rsp)
                                            {
                                                if (rsp.success)
                                                {
                                                    profileDlg.hide();

                                                    info('个人参数信息保存成功！', function(){window.location.reload();});
                                                }
                                                else
                                                    error(rsp.msg);
                                            }
                                        });

                                    // 不关闭对话框
                                    return false;
                                }
                            },
                        cancle: {val: '取消'}
                    }
            });

        $('select[name="pageLimit"]').html(getSelectOptions([[20, '20条每页'], [30, '30条每页'], [40, '40条每页'], [50, '50条每页'], [100, '100条每页']], 20));
        profileDlg.$title.html('<i class="fa fa-pencil"></i>&nbsp修改');

        $("#hasSaveHeaderImage").val("0");

        // 初始化校验规则
        $("#formProfile").validate();
    }

    $('#formProfile')[0].reset();
    fillFormData('formProfile', myProfile);
    profileDlg.show();
    $("#formProfile").clearValidate();
}

/// 更换新头像
function changeHeadImage()
{

    initCropImgDialog(function(fileUse){

        $('#hasSaveHeaderImage').val("1");

        if(fileUse.fileEngine == '1') {
            $('#userHeadImg').prop('src', ctx + '/oss/file/view/' + fileUse.id);
            //$('#imgUserAvatar').prop('src', ctx + '/oss/file/view/' + fileUse.id);

        }else {
            $('#userHeadImg').prop('src', fileUse.accessUrl);
            //$('#imgUserAvatar').prop('src', fileUse.accessUrl);
        }

    });

}

/**
 * 退出系统
 */
function logoutSystem()
{
    confirm('您确定现在就退出系统吗？', function()
    {
        window.location = ctx+'/login/logout';
    });
}

//----------------------------------------------------------------------------------------------
//		快捷菜单
//----------------------------------------------------------------------------------------------

var shortcutSaveTimeout = null;

/**
 * 保存快捷方式布局
 */
function saveShortcutLayout()
{
    // console.debug('延时5秒后持久化！');
    // 重新延时5秒保存
    if (null != shortcutSaveTimeout)
        clearTimeout(shortcutSaveTimeout);

    shortcutSaveTimeout = setTimeout("saveShortcut()", 5 * 1000);
}

/**
 * 持久化快捷方式布局
 */
function saveShortcut()
{
    var shortcuts = $("#nav-bar").children();
    var lies = [];
    shortcuts.each(function(index, li)
    {
        lies.push($(li).attr('menuId'));
    });
    var url = ctx+"/system/myshortcut/saveAll";
    console.log({menuIds: lies.join(',')});
    $.post
    (
        url, {menuIds: lies.join(',')},
        function(rsp, textStatus, jqXHR)
        {
            if (!rsp.success)
                error(rsp.msg, function(){});
        }
    )
}

//----------------------------------------------------------------------------------------------
//		系统消息
//----------------------------------------------------------------------------------------------

/***
 * 查询我的未读消息
 */



function startMyNotify(){
    var ws = null;
    var targetUrl = "ws://localhost:8081"+ctx+"/websocket/notify/"+userKey+"/"+userSessoinId;

    if('WebSocket' in window){
        ws = new WebSocket(targetUrl);
    }else if('MozWebSocket' in window){
        ws = new MozWebSocket(targetUrl);
    }else{
        return;
    }

    ws.onopen = function () {
    };
    ws.onmessage = function (event) {
        if(event) {
            var notify = event.data;
            if(notify){
                //解析数据
                notify = JSON.parse(notify);
                if(notify.messageType == '1'){
                    //跳转到登录界面
                    window.location = ctx+'/login/logout';
                }else {
                    loadMyMessageCount(notify.noReadCount);
                    $(".badge").shake(3);
                    //弹框显示通知信息
                    showWsMsg(notify);
                    console.log(notify.title + notify.content);
                }
            }
        }
    };
    ws.onclose = function (event) {
    };


}


function showWsMsg(notify){
    var contentHtml = "<div style='height: 200px;overflow:auto'>" +  notify.content + "</div>";
    var dialog = iDialog({
        content: contentHtml , lock: true, effect: 'i-super-scale', width: 550, height: 300,
        btn: {ok: {val: '已阅', type: 'green', click: readNotify(notify.id)}, cancel: {val: '取消'}}
    });

    var title = notify.title;
    if(!title){
        title = "通知";
    }
    dialog.$title.html(title);
    dialog.show();


}

function readNotify(notifyId){

}

function loadMyMessageCount(total){
    if (0 == total)
    {
        $('.badge').addClass('hidden');
        $('i.fa-bell-o').removeClass('animated-bell');
    }else {

        $('.badge').removeClass('hidden');
        $('.badge').addClass('hidden');
        $('i.fa-bell-o').removeClass('animated-bell');

        $('.badge').removeClass('hidden');
        $(".badge").html(total > 99 ? '99+' : total);
        $('i.fa-bell-o').addClass('animated-bell');
    }
}

/**
 * 抖动效果
 * @param intShakes
 * @param intDistance
 * @param intDuration
 * @returns {jQuery}
 */
jQuery.fn.shake = function (intShakes ) {
    this.each(function () {
        var jqNode = $(this);
        var x = jqNode.width();
        var y = jqNode.height();
        jqNode.css({ position: 'relative' });
        for (var x = 1; x <= intShakes; x++) {
            jqNode.animate({width: x * 1.3, height: y * 1.3}, 100);
            jqNode.animate({width: x, height: y}, 100);
            jqNode.animate({width: x, height: y}, 500);
        }
    });
    return this;
}

/**
 function loadMyMessage()
 {
    $.post('http://123.57.235.9:88/tzcp/platform/msg/unread', function(rsp, textStatus, jqXHR)
    {
        if (200 == rsp.code)
        {
        }
    });
}
 */

/**
 function showMessage(rspData){

    if (0 == rspData.total)
    {
        $('.badge').addClass('hidden');
        $('i.fa-bell-o').removeClass('animated-bell');
        $('.msg-toast-container').addClass('hidden');

        $(".unread-list").html('');
    }
    else
    {
        $('.badge').removeClass('hidden');
        $(".badge").html(rspData.total > 99 ? '99+' : rspData.total);
        $('i.fa-bell-o').addClass('animated-bell');
        $('.msg-toast-container').removeClass('hidden');
        $('.msg-toast-title font').html(rspData.total);

        var html = '';
        $.each(rspData.rows, function(index, r)
        {
            html +=
                '<li>' +
                '	<a href="javascript:openMenu(\'http://123.57.235.9:88/tzcp/platform/msg?id=' + r.id + '\')">' +
                '		<div><img src="' + getUserAvatarUrl(r.headImg, r.domainId) + '"/></div>' +
                '		<div>' +
                '			<div>' +
                '				<span>' + r.userName + ': </span>' +
                '				<span title="' + r.title + '">' + r.title + '</span>' +
                '			</div>' +
                '			<div>' +
                '				<svg class="icon" aria-hidden="true"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-time"></use></svg>' +
                '				<span>' + r.createDate.substring(0, 16) + '</span>' +
                '				<span>' + r.category + '</span>' +
                '			</div>' +
                '		</div>' +
                '	</a>' +
                '</li>';
        });

        $(".unread-list").html(html);
    }
}
 */