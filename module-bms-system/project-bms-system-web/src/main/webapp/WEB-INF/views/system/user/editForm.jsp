<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/taglibs.jspf" %>
<bms:contentHeader />


<div style="padding:0 10px">
    <div class="row">
        <div class="col-xs-12 col-lg-12 col-md-12" style="padding-left: 0;padding-right: 0">
            <div class="block-each block-each-another">


                <form action="" method="post" id="editForm" viewId="detailInfo">

                    <div class="block-tit">
                        &nbsp;<i class="fa fa-th-list"></i>&nbsp;基本信息
                    </div>



                    <table class="info-table hide-area">
                        <colgroup>
                            <col style="width: 15%" />
                            <col style="width: 35%" />
                            <col style="width: 15%" />
                            <col style="width: 35%" />
                        </colgroup>
                        <tr>
                            <th>所属企业<font color="red">*</font></th>
                            <td colspan="3" class="fd_tenantName">
                               ${m.tenantName}
                            </td>
                        </tr>
                        <tr>
                            <th>用户名称</th>
                            <td class="fd_userName">${m.userName}</td>

                            <th>用户登录名</th>
                            <td class="fd_loginName">${m.loginName}</td>
                        </tr>
                        <tr>
                            <th>所属机构</th>
                            <td class="fd_organName">${m.organName}</td>
                            <th>所在部门</th>
                            <td class="fd_depName">${m.depName}</td>
                        </tr>
                        <tr>
                            <th>直属领导</th>
                            <td class="fd_leadUserName">${m.leadUserName}</td>
                            <th>手机号</th>
                            <td class="fd_phone">${m.phone}</td>

                        </tr>

                        <tr>

                            <th>邮箱</th>
                            <td class="fd_email" colspan="3">${m.email}</td>
                        </tr>
                        <tr>
                            <th >备注</th>
                            <td colspan="3" class="fd_remark">${m.remark}</td>
                        </tr>

                    </table>


                    <input type="hidden" id="id" name="id" value="${m.id}">
                    <table class="info-table show-area">

                        <colgroup>
                            <col style="width: 15%" />
                            <col style="width: 35%" />
                            <col style="width: 15%" />
                            <col style="width: 35%" />
                        </colgroup>

                        <tr>
                            <th>用户名称<font color="red">*</font></th>
                            <td><input type="text" class="form-control input-sm required"  placeholder="请输入用户名称"
                                       value="${m.userName}" id="userName" name="userName" minlength="2" maxlength='50'/></td>

                            <th>用户登录名<font color="red">*</font></th>
                            <td><input type="text" class="form-control input-sm required"  placeholder="请输入用户登录名"  autocomplete="off"
                                       value="${m.loginName}" id="loginName" name="loginName" minlength="4" maxlength='20'/></td>
                        </tr>

                        <c:if test="${empty m.id}">
                        <tr>
                            <th>密码<font color="red">*</font></th>
                            <td><input type="password" class="form-control input-sm required"  placeholder="请输入用户名称"
                                       autocomplete="off" id="loginPassword" name="loginPassword" minlength="6" maxlength='10'/></td>

                            <th>确认密码<font color="red">*</font></th>
                            <td><input type="password" class="form-control input-sm required"  placeholder="请输入用户名称" id="loginPasswordConfirm" name="loginPasswordConfirm"
                                       autocomplete="off" equalto="#loginPassword" data-msg-equalto="您2次输入的新密码不一致！" minlength="6" maxlength='10'/></td>
                        </tr>
                        </c:if>
                        <tr>
                            <th>所属机构<font color="red">*</font></th>
                            <td>
                                <c:if test="${ fn:indexOf(allQueryString,'&organId=')>=0 }">
                                    <input type="text" class="form-control input-sm" name="organName" id="organName" value="${ m.organName }" readonly>
                                </c:if>
                                <c:if test="${ fn:indexOf(allQueryString,'&organId=')<0 }">
                                    <div class="input-group">
                                        <input type="text"  id="organName" name="organName" value="${m.organName}" class="form-control input-sm  organName "
                                               placeholder="请选择所属机构" readonly="readonly" >
                                        <input type="hidden" id="organId" name="organId" value="${m.organId}">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-primary btn-sm organName">
                                                <i class="fa fa-search-plus"></i>
                                            </button>
                                            <button type="button" id="clearOrganId" class="btn btn-primary btn-sm">
                                                <i class="fa fa-close"></i>
                                            </button>
                                        </div>
                                    </div>
                                </c:if>
                            </td>
                            <th>所在部门</th>
                            <td>
                                <c:if test="${ fn:indexOf(allQueryString,'&depId=')>=0 }">
                                    <input type="text"  id="depName" name="depName" value="${m.depId}" class="form-control input-sm" readonly="readonly" >
                                </c:if>
                                <c:if test="${ fn:indexOf(allQueryString,'&depId=')<0 }">
                                    <div class="input-group">
                                        <input type="text"  id="depName" name="depName" value="${m.depName}" class="form-control input-sm  depName "
                                               placeholder="请选择所在部门" readonly="readonly" >
                                        <input type="hidden" id="depId" name="depId" value="${m.depId}">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-primary btn-sm depName">
                                                <i class="fa fa-search-plus"></i>
                                            </button>
                                            <button type="button" id="clearDepId" class="btn btn-primary btn-sm">
                                                <i class="fa fa-close"></i>
                                            </button>
                                        </div>
                                    </div>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>直属领导</th>
                            <td>
                                <c:if test="${ fn:indexOf(allQueryString,'&leadUserId=')>=0 }">
                                    <input type="text"  id="leadUserName" name="leadUserName" class="form-control input-sm" readonly="readonly">
                                </c:if>
                                <c:if test="${ fn:indexOf(allQueryString,'&leadUserId=')<0 }">
                                <div class="input-group">
                                    <input type="text"  id="leadUserName" name="leadUserName" class="form-control input-sm leadUserName"
                                           placeholder="请选择直属领导" readonly="readonly" value="${m.leadUserName}">
                                    <input type="hidden" id="leadUserId" name="leadUserId" value="${m.leadUserId}">
                                    <div class="input-group-btn">
                                        <button type="button"  class="btn btn-primary btn-sm leadUserName">
                                            <i class="fa fa-search-plus"></i>
                                        </button>
                                        <button type="button"  id="clearLeadUserId"  class="btn btn-primary btn-sm">
                                            <i class="fa fa-close"></i>
                                        </button>
                                    </div>
                                </div>
                                </c:if>
                            </td>
                            <th>手机号<font color="red">*</font></th>
                            <td><input type="text" class="form-control input-sm required"  placeholder="请输入手机号"
                                       value="${m.phone}" id="phone" name="phone" minlength="11" maxlength='11'/></td>

                        </tr>

                        <tr>

                            <th>邮箱<font color="red">*</font></th>
                            <td colspan="3"><input type="email" class="form-control input-sm required"  placeholder="请输入邮箱"
                                       value="${m.email}"  id="email" name="email" minlength="4" maxlength='50'/></td>
                        </tr>




                        <tr>
                            <th >备注</th>
                            <td colspan="3">
                                <div class="info-detail">
                                    <textarea class="form-control input-sm" name="remark" placeholder="请输入备注，500字以内" maxlength="500" rows="5">${m.remark}</textarea>
                                </div>
                            </td>
                        </tr>

                    </table>


                </form>
            </div>

            <div style="margin-top:10px;position:absolute;" align="center" class="toolBar">



                <shiro:hasPermission name="system.user:update">
                <button type="button" class="btn btn-primary btn-sm hide-area" onclick="openEdit()">
                    <i class="fa fa-edit"></i>
                    <span>编 辑</span>
                </button>
                </shiro:hasPermission>

                <button type="button" class="btn  btn-warning btn-sm hide-area" onclick="closeWindow()">
                    <i class="fa fa-mail-reply"></i>
                    <span>返 回</span>
                </button>


                <shiro:hasPermission name="system.user:update">
                <button type="button" class="btn btn-primary btn-sm show-area" onclick="doUpdate()">
                    <i class="fa fa-save"></i>
                    <span>保 存</span>
                </button>
                </shiro:hasPermission>

                <button type="button" class="btn  btn-warning btn-sm show-area" onclick="cancelEdit()">
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

<script src="${staticUrl}/statics2/business-js/system/dep/search.js"></script>
<script src="${staticUrl}/statics2/business-js/system/user/search.js"></script>
<script src="${staticUrl}/statics2/js/project/form.js"></script>
<script src="${ staticUrl }/statics2/business-js/system/organ/search.js"></script>


<script src="${staticUrl}/statics2/js/project/common-upload.js"></script>


<script language="JavaScript">




    $(function() {


        var params = {
            tenantId: '${m.tenantId}',
            organId: '${m.organId}',
            depId: '${m.depId}'
        };
        //部门选择
        var depWin = $(".depName").OpenSystemDepSelectWin({
            title: "上级部门",
            selectType: "t1",
            callId: "depId",
            callName: "depName",
            clearId: "clearDepId",
            params: params
        });

        //人员选择
        $(".leadUserName").OpenSystemUserSelectWin({
            title: "直属领导",
            selectType: "d1",
            callId: "leadUserId",
            callName: "leadUserName",
            clearId: "clearLeadUserId",
            params: params
        });

        //选择机构
        $(".organName").OpenSystemOrganSelectWin({
            title: "上级机构",
            selectType: "t1",
            callId: "organId",
            callName: "organName",
            clearId: "clearOrganId",
            params: params
        },function (id, name, obj){
            params.organId = id;
            depWin.tableTemple.search(params);

        });
    });


</script>

<bms:contentFooter />

