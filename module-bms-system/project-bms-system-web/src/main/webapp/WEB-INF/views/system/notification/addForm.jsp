<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/taglibs.jspf" %>
<bms:contentHeader />




<div style="padding:0 10px">
    <div class="row">
        <div class="col-xs-12 col-lg-12 col-md-12" style="padding-left: 0;padding-right: 0">
            <div class="block-each block-each-another">
                <div class="block-tit">
                    &nbsp;<i class="fa fa-th-list"></i>&nbsp;基本信息
                </div>


                <form id="editForm" action="" method="post">
                    <table class="info-table">
                        <colgroup>
                            <col style="width: 15%" />
                            <col style="width: 35%" />
                            <col style="width: 15%" />
                            <col style="width: 35%" />
                        </colgroup>

                        <tbody>

                                <tr>
                                    <th>模块</th>
                                    <td>
                                            <input type="text"  class="form-control input-sm "
                                                   placeholder="请输入模块" autocomplete="off"
                                                   value="${ m.notifyModule }" id="notifyModule" name="notifyModule"
                                                      maxlength="100"  />
                                    </td>
                                    <th>通知标题</th>
                                    <td>
                                        <input type="text"  class="form-control input-sm "
                                               placeholder="请输入通知标题" autocomplete="off"
                                               value="${ m.title }" id="title" name="title"
                                                   maxlength="100"  />
                                    </td>
                                </tr>
                                <tr>
                                    <th>通知内容<font color="red">*</font></th>
                                    <td>
                                            <div class="info-detail">
                                                <textarea required="required" class="form-control input-sm required "
                                                          name="content" id="content " placeholder="请输入通知内容，65535字以内" maxlength="65535" rows="4">${ m.content $}</textarea>
                                            </div>
                                    </td>
                                    <th>通知时间<font color="red">*</font></th>
                                    <td>
                                        <div class="input-group">
                                            <input type="text" required="required" class="form-control input-sm Wdate required"
                                                   placeholder="请输入通知时间" autocomplete="off"
                                                   onclick="WdatePicker({dateFmt: 'yyyy-MM-dd', el: 'notifyTime'})"
                                                           value="${ m.notifyTime }" id="notifyTime" name="notifyTime" readonly   />

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>通知文件</th>
                                    <td>
                                    </td>
                                </tr>
                        </tbody>
                    </table>
                </form>
            </div>

            <div style="margin-top:10px;position:absolute;" align="center" class="toolBar">
                <shiro:hasPermission name="system.user:add">
                    <button type="button" class="btn btn-primary btn-sm" onclick="doSave()">
                        <i class="fa fa-save"></i>
                        <span>保 存</span>
                    </button>
                </shiro:hasPermission>
                <button type="button" class="btn  btn-warning btn-sm" onclick="closeWindow()">
                    <i class="fa fa-close"></i>
                    <span>取 消</span>
                </button>
            </div>
        </div>
    </div>
</div>


<script>
    var inAllPage = "${inAllPage}";
</script>

<bms:contentJS />

<script src="${ staticUrl }/statics2/js/project/form.js"></script>

<script language="JavaScript">
    $(function() {

    });

</script>

<bms:contentFooter />