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


                                    <th>字典名<font color="red">*</font></th>

                                    <td>


                                        <input type="text" required="required" class="form-control input-sm required"
                                               placeholder="请输入字典名" autocomplete="off"
                                               value="${ m.dictName }" id="dictName" name="dictName"
                                               maxlength="50"  />



                                    </td>


                                    <th width="15%">字典值<font color="red">*</font></th>

                                    <td>
                                        <input type="text" id="dictVal" name="dictVal" maxlength="2"
                                               required="required" class="form-control input-sm required"
                                               placeholder="请输入字典值" autocomplete="off">
                                    </td>


                                </tr>


                                <tr>





                                    <th width="15%">名称国际化</th>

                                    <td>





                                            <input type="text"  class="form-control input-sm "
                                                   placeholder="请输入名称国际化" autocomplete="off"
                                                   value="${ m.dictI18n }" id="dictI18n" name="dictI18n"
                                                       maxlength="100"  />




                                    </td>


                                    <th>字典限制正则</th>

                                    <td>


                                        <input type="text"  class="form-control input-sm "
                                               placeholder="请输入字典限制正则" autocomplete="off"
                                               value="${ m.dictReg }" id="dictReg" name="dictReg"
                                               maxlength="100"  />



                                    </td>


                                </tr>


                                <tr>





                                    <th width="15%">顺序<font color="red">*</font></th>

                                    <td>





                                            <input type="text" required="required" class="form-control input-sm number required"
                                                   placeholder="请输入顺序" autocomplete="off"
                                                   value="${ m.orderby }" id="orderby" name="orderby"
                                                       maxlength="10"  />




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



</script>

<bms:contentFooter />