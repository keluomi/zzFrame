<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/common/taglibs.jspf" %>
<%--

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en" xmlns="http://www.w3.org/1999/html">
<!--<![endif]-->
--%>

<!DOCTYPE html>
<html lang="zh-CN" >


<head>
    <meta charset="utf-8">
    <meta http-equiv="Window-target" content="_top">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta http-equiv="Cache-Control" content="no-store" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <!-- 页面按原比例显示 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><spring:message code='common.platform.info' text='zz后台管理系统' /></title>
    <link rel="icon" href="${staticUrl}/statics2/image/favicon.ico">
    <link rel="shortcut icon" href="${staticUrl}/statics2/image/favicon.ico">



    <link rel="stylesheet" href="${ctx}/statics2/font-awesome/font-awesome.min.css"/>
    <link rel="stylesheet" href="${ctx}/statics2/ionicons/css/ionicons.css"/>
    <link rel="stylesheet" href="${ctx}/statics2/css/icons.css"/>


    <link rel="stylesheet" href="${ctx}/statics2/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${ctx}/statics2/jquery/easyui/themes/default/easyui.css">
    <link rel="stylesheet" href="${ctx}/statics2/jquery/opentip/opentip.css" />
    <link rel="stylesheet" href="${ctx}/statics2/jquery/jquery-confirm/jquery-confirm.min.css"/>
    <link rel="stylesheet" href="${ctx}/statics2/jquery/toastr/toastr.min.css"/>

    <!-- 文件上传组件 baidu WebFE -->
    <link rel="stylesheet" href="${ctx}/statics2/js/webuploader/webuploader.css"/>


    <!--[if IE 7]>
    <link type="text/css" href="${staticUrl}/statics2/font-wesome/font-awesome-ie7.min.css">
    <![endif]-->

    <!--[if lt IE 9]>
    <script src="${staticUrl}/statics2/js/html5shiv.min.js"></script>
    <script src="${staticUrl}/statics2/js/respond.js"></script>
    <![endif]-->



    <link rel="stylesheet" href="${ctx}/statics2/css/common-style-${theme}.css">
    <link rel="stylesheet" href="${ctx}/statics2/css/all.css"/>



</head>

<body>


<div style="padding:0 10px">


    <div class="i-ibox">
        <div class="ibox-content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#fa-icons" data-toggle="tab">Font Awesome</a></li>
                            <li><a href="#glyphicons" data-toggle="tab">Glyphicons</a></li>
                            <li><a href="#icons" data-toggle="tab">icon</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="fa-icons">
                                <section id="new">
                                    <h4 class="page-header">66 New Icons in 4.4</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-500px"></i> fa-500px</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-amazon"></i> fa-amazon
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-balance-scale"></i>
                                            fa-balance-scale
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-0"></i>
                                            fa-battery-0
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-1"></i>
                                            fa-battery-1
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-2"></i>
                                            fa-battery-2
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-3"></i>
                                            fa-battery-3
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-4"></i>
                                            fa-battery-4
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-empty"></i>
                                            fa-battery-empty
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-full"></i>
                                            fa-battery-full
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-half"></i>
                                            fa-battery-half
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-quarter"></i>
                                            fa-battery-quarter
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i
                                                class="fa fa-battery-three-quarters"></i>
                                            fa-battery-three-quarters
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-black-tie"></i>
                                            fa-black-tie
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-check-o"></i>
                                            fa-calendar-check-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-minus-o"></i>
                                            fa-calendar-minus-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-plus-o"></i>
                                            fa-calendar-plus-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-times-o"></i>
                                            fa-calendar-times-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-diners-club"></i>
                                            fa-cc-diners-club
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-jcb"></i> fa-cc-jcb
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chrome"></i> fa-chrome
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-clone"></i> fa-clone</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-commenting"></i>
                                            fa-commenting
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-commenting-o"></i>
                                            fa-commenting-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-contao"></i> fa-contao
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-creative-commons"></i>
                                            fa-creative-commons
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-expeditedssl"></i>
                                            fa-expeditedssl
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-firefox"></i> fa-firefox
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fonticons"></i>
                                            fa-fonticons
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-genderless"></i>
                                            fa-genderless
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-get-pocket"></i>
                                            fa-get-pocket
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gg"></i> fa-gg</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gg-circle"></i>
                                            fa-gg-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-grab-o"></i>
                                            fa-hand-grab-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-lizard-o"></i>
                                            fa-hand-lizard-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-paper-o"></i>
                                            fa-hand-paper-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-peace-o"></i>
                                            fa-hand-peace-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-pointer-o"></i>
                                            fa-hand-pointer-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-rock-o"></i>
                                            fa-hand-rock-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-scissors-o"></i>
                                            fa-hand-scissors-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-spock-o"></i>
                                            fa-hand-spock-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-stop-o"></i>
                                            fa-hand-stop-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass"></i>
                                            fa-hourglass
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-1"></i>
                                            fa-hourglass-1
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-2"></i>
                                            fa-hourglass-2
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-3"></i>
                                            fa-hourglass-3
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-end"></i>
                                            fa-hourglass-end
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-half"></i>
                                            fa-hourglass-half
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-o"></i>
                                            fa-hourglass-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-start"></i>
                                            fa-hourglass-start
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-houzz"></i> fa-houzz</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-i-cursor"></i> fa-i-cursor
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-industry"></i> fa-industry
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-internet-explorer"></i>
                                            fa-internet-explorer
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map"></i> fa-map</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map-o"></i> fa-map-o</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map-pin"></i> fa-map-pin
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map-signs"></i>
                                            fa-map-signs
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mouse-pointer"></i>
                                            fa-mouse-pointer
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-object-group"></i>
                                            fa-object-group
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-object-ungroup"></i>
                                            fa-object-ungroup
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-odnoklassniki"></i>
                                            fa-odnoklassniki
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-odnoklassniki-square"></i>
                                            fa-odnoklassniki-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-opencart"></i> fa-opencart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-opera"></i> fa-opera</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-optin-monster"></i>
                                            fa-optin-monster
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-registered"></i>
                                            fa-registered
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-safari"></i> fa-safari
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sticky-note"></i>
                                            fa-sticky-note
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sticky-note-o"></i>
                                            fa-sticky-note-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-television"></i>
                                            fa-television
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-trademark"></i>
                                            fa-trademark
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tripadvisor"></i>
                                            fa-tripadvisor
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tv"></i> fa-tv
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-vimeo"></i> fa-vimeo</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wikipedia-w"></i>
                                            fa-wikipedia-w
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-y-combinator"></i>
                                            fa-y-combinator
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-yc"></i> fa-yc
                                            <span class="text-muted">(alias)</span></div>
                                    </div>
                                </section>

                                <section id="web-application">
                                    <h4 class="page-header">Web Application Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-adjust"></i> fa-adjust
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-anchor"></i> fa-anchor
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-archive"></i> fa-archive
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-area-chart"></i>
                                            fa-area-chart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrows"></i> fa-arrows
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrows-h"></i> fa-arrows-h
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrows-v"></i> fa-arrows-v
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-asterisk"></i> fa-asterisk
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-at"></i> fa-at</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-automobile"></i>
                                            fa-automobile
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-balance-scale"></i>
                                            fa-balance-scale
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ban"></i> fa-ban</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bank"></i> fa-bank <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bar-chart"></i>
                                            fa-bar-chart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bar-chart-o"></i>
                                            fa-bar-chart-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-barcode"></i> fa-barcode
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bars"></i> fa-bars</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-0"></i>
                                            fa-battery-0
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-1"></i>
                                            fa-battery-1
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-2"></i>
                                            fa-battery-2
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-3"></i>
                                            fa-battery-3
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-4"></i>
                                            fa-battery-4
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-empty"></i>
                                            fa-battery-empty
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-full"></i>
                                            fa-battery-full
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-half"></i>
                                            fa-battery-half
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-battery-quarter"></i>
                                            fa-battery-quarter
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i
                                                class="fa fa-battery-three-quarters"></i>
                                            fa-battery-three-quarters
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bed"></i> fa-bed</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-beer"></i> fa-beer</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bell"></i> fa-bell</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bell-o"></i> fa-bell-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bell-slash"></i>
                                            fa-bell-slash
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bell-slash-o"></i>
                                            fa-bell-slash-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bicycle"></i> fa-bicycle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-binoculars"></i>
                                            fa-binoculars
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-birthday-cake"></i>
                                            fa-birthday-cake
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bolt"></i> fa-bolt</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bomb"></i> fa-bomb</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-book"></i> fa-book</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bookmark"></i> fa-bookmark
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bookmark-o"></i>
                                            fa-bookmark-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-briefcase"></i>
                                            fa-briefcase
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bug"></i> fa-bug</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-building"></i> fa-building
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-building-o"></i>
                                            fa-building-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bullhorn"></i> fa-bullhorn
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bullseye"></i> fa-bullseye
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bus"></i> fa-bus</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cab"></i> fa-cab <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calculator"></i>
                                            fa-calculator
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar"></i> fa-calendar
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-check-o"></i>
                                            fa-calendar-check-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-minus-o"></i>
                                            fa-calendar-minus-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-o"></i>
                                            fa-calendar-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-plus-o"></i>
                                            fa-calendar-plus-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-calendar-times-o"></i>
                                            fa-calendar-times-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-camera"></i> fa-camera
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-camera-retro"></i>
                                            fa-camera-retro
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-car"></i> fa-car</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-square-o-down"></i>
                                            fa-caret-square-o-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-square-o-left"></i>
                                            fa-caret-square-o-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-square-o-right"></i>
                                            fa-caret-square-o-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-square-o-up"></i>
                                            fa-caret-square-o-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cart-arrow-down"></i>
                                            fa-cart-arrow-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cart-plus"></i>
                                            fa-cart-plus
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc"></i> fa-cc</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-certificate"></i>
                                            fa-certificate
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-check"></i> fa-check</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-check-circle"></i>
                                            fa-check-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-check-circle-o"></i>
                                            fa-check-circle-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-check-square"></i>
                                            fa-check-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-check-square-o"></i>
                                            fa-check-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-child"></i> fa-child</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-circle"></i> fa-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-circle-o"></i> fa-circle-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-circle-o-notch"></i>
                                            fa-circle-o-notch
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-circle-thin"></i>
                                            fa-circle-thin
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-clock-o"></i> fa-clock-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-clone"></i> fa-clone</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-close"></i> fa-close <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cloud"></i> fa-cloud</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cloud-download"></i>
                                            fa-cloud-download
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cloud-upload"></i>
                                            fa-cloud-upload
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-code"></i> fa-code</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-code-fork"></i>
                                            fa-code-fork
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-coffee"></i> fa-coffee
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cog"></i> fa-cog</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cogs"></i> fa-cogs</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-comment"></i> fa-comment
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-comment-o"></i>
                                            fa-comment-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-commenting"></i>
                                            fa-commenting
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-commenting-o"></i>
                                            fa-commenting-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-comments"></i> fa-comments
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-comments-o"></i>
                                            fa-comments-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-compass"></i> fa-compass
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-copyright"></i>
                                            fa-copyright
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-creative-commons"></i>
                                            fa-creative-commons
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-credit-card"></i>
                                            fa-credit-card
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-crop"></i> fa-crop</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-crosshairs"></i>
                                            fa-crosshairs
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cube"></i> fa-cube</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cubes"></i> fa-cubes</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cutlery"></i> fa-cutlery
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-dashboard"></i>
                                            fa-dashboard
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-database"></i> fa-database
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-desktop"></i> fa-desktop
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-diamond"></i> fa-diamond
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-dot-circle-o"></i>
                                            fa-dot-circle-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-download"></i> fa-download
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-edit"></i> fa-edit <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ellipsis-h"></i>
                                            fa-ellipsis-h
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ellipsis-v"></i>
                                            fa-ellipsis-v
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-envelope"></i> fa-envelope
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-envelope-o"></i>
                                            fa-envelope-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-envelope-square"></i>
                                            fa-envelope-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-eraser"></i> fa-eraser
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-exchange"></i> fa-exchange
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-exclamation"></i>
                                            fa-exclamation
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-exclamation-circle"></i>
                                            fa-exclamation-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-exclamation-triangle"></i>
                                            fa-exclamation-triangle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-external-link"></i>
                                            fa-external-link
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-external-link-square"></i>
                                            fa-external-link-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-eye"></i> fa-eye</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-eye-slash"></i>
                                            fa-eye-slash
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-eyedropper"></i>
                                            fa-eyedropper
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fax"></i> fa-fax</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-feed"></i> fa-feed <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-female"></i> fa-female
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fighter-jet"></i>
                                            fa-fighter-jet
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-archive-o"></i>
                                            fa-file-archive-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-audio-o"></i>
                                            fa-file-audio-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-code-o"></i>
                                            fa-file-code-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-excel-o"></i>
                                            fa-file-excel-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-image-o"></i>
                                            fa-file-image-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-movie-o"></i>
                                            fa-file-movie-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-pdf-o"></i>
                                            fa-file-pdf-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-photo-o"></i>
                                            fa-file-photo-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-picture-o"></i>
                                            fa-file-picture-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-powerpoint-o"></i>
                                            fa-file-powerpoint-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-sound-o"></i>
                                            fa-file-sound-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-video-o"></i>
                                            fa-file-video-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-word-o"></i>
                                            fa-file-word-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-zip-o"></i>
                                            fa-file-zip-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-film"></i> fa-film</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-filter"></i> fa-filter
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fire"></i> fa-fire</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fire-extinguisher"></i>
                                            fa-fire-extinguisher
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-flag"></i> fa-flag</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-flag-checkered"></i>
                                            fa-flag-checkered
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-flag-o"></i> fa-flag-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-flash"></i> fa-flash <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-flask"></i> fa-flask</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-folder"></i> fa-folder
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-folder-o"></i> fa-folder-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-folder-open"></i>
                                            fa-folder-open
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-folder-open-o"></i>
                                            fa-folder-open-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-frown-o"></i> fa-frown-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-futbol-o"></i> fa-futbol-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gamepad"></i> fa-gamepad
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gavel"></i> fa-gavel</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gear"></i> fa-gear <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gears"></i> fa-gears <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gift"></i> fa-gift</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-glass"></i> fa-glass</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-globe"></i> fa-globe</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-graduation-cap"></i>
                                            fa-graduation-cap
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-group"></i> fa-group <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-grab-o"></i>
                                            fa-hand-grab-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-lizard-o"></i>
                                            fa-hand-lizard-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-paper-o"></i>
                                            fa-hand-paper-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-peace-o"></i>
                                            fa-hand-peace-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-pointer-o"></i>
                                            fa-hand-pointer-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-rock-o"></i>
                                            fa-hand-rock-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-scissors-o"></i>
                                            fa-hand-scissors-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-spock-o"></i>
                                            fa-hand-spock-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-stop-o"></i>
                                            fa-hand-stop-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hdd-o"></i> fa-hdd-o</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-headphones"></i>
                                            fa-headphones
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-heart"></i> fa-heart</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-heart-o"></i> fa-heart-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-heartbeat"></i>
                                            fa-heartbeat
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-history"></i> fa-history
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-home"></i> fa-home</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hotel"></i> fa-hotel <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass"></i>
                                            fa-hourglass
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-1"></i>
                                            fa-hourglass-1
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-2"></i>
                                            fa-hourglass-2
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-3"></i>
                                            fa-hourglass-3
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-end"></i>
                                            fa-hourglass-end
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-half"></i>
                                            fa-hourglass-half
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-o"></i>
                                            fa-hourglass-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hourglass-start"></i>
                                            fa-hourglass-start
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-i-cursor"></i> fa-i-cursor
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-image"></i> fa-image <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-inbox"></i> fa-inbox</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-industry"></i> fa-industry
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-info"></i> fa-info</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-info-circle"></i>
                                            fa-info-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-institution"></i>
                                            fa-institution
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-key"></i> fa-key</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-keyboard-o"></i>
                                            fa-keyboard-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-language"></i> fa-language
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-laptop"></i> fa-laptop
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-leaf"></i> fa-leaf</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-legal"></i> fa-legal <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-lemon-o"></i> fa-lemon-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-level-down"></i>
                                            fa-level-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-level-up"></i> fa-level-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-life-bouy"></i>
                                            fa-life-bouy
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-life-buoy"></i>
                                            fa-life-buoy
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-life-ring"></i>
                                            fa-life-ring
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-life-saver"></i>
                                            fa-life-saver
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-lightbulb-o"></i>
                                            fa-lightbulb-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-line-chart"></i>
                                            fa-line-chart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-location-arrow"></i>
                                            fa-location-arrow
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-lock"></i> fa-lock</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-magic"></i> fa-magic</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-magnet"></i> fa-magnet
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mail-forward"></i>
                                            fa-mail-forward
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mail-reply"></i>
                                            fa-mail-reply
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mail-reply-all"></i>
                                            fa-mail-reply-all
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-male"></i> fa-male</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map"></i> fa-map</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map-marker"></i>
                                            fa-map-marker
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map-o"></i> fa-map-o</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map-pin"></i> fa-map-pin
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-map-signs"></i>
                                            fa-map-signs
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-meh-o"></i> fa-meh-o</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-microphone"></i>
                                            fa-microphone
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-microphone-slash"></i>
                                            fa-microphone-slash
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-minus"></i> fa-minus</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-minus-circle"></i>
                                            fa-minus-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-minus-square"></i>
                                            fa-minus-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-minus-square-o"></i>
                                            fa-minus-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mobile"></i> fa-mobile
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mobile-phone"></i>
                                            fa-mobile-phone
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-money"></i> fa-money</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-moon-o"></i> fa-moon-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mortar-board"></i>
                                            fa-mortar-board
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-motorcycle"></i>
                                            fa-motorcycle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mouse-pointer"></i>
                                            fa-mouse-pointer
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-music"></i> fa-music</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-navicon"></i> fa-navicon
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-newspaper-o"></i>
                                            fa-newspaper-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-object-group"></i>
                                            fa-object-group
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-object-ungroup"></i>
                                            fa-object-ungroup
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paint-brush"></i>
                                            fa-paint-brush
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paper-plane"></i>
                                            fa-paper-plane
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paper-plane-o"></i>
                                            fa-paper-plane-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paw"></i> fa-paw</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pencil"></i> fa-pencil
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pencil-square"></i>
                                            fa-pencil-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pencil-square-o"></i>
                                            fa-pencil-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-phone"></i> fa-phone</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-phone-square"></i>
                                            fa-phone-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-photo"></i> fa-photo <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-picture-o"></i>
                                            fa-picture-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pie-chart"></i>
                                            fa-pie-chart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plane"></i> fa-plane</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plug"></i> fa-plug</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plus"></i> fa-plus</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plus-circle"></i>
                                            fa-plus-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plus-square"></i>
                                            fa-plus-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plus-square-o"></i>
                                            fa-plus-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-power-off"></i>
                                            fa-power-off
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-print"></i> fa-print</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-puzzle-piece"></i>
                                            fa-puzzle-piece
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-qrcode"></i> fa-qrcode
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-question"></i> fa-question
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-question-circle"></i>
                                            fa-question-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-quote-left"></i>
                                            fa-quote-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-quote-right"></i>
                                            fa-quote-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-random"></i> fa-random
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-recycle"></i> fa-recycle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-refresh"></i> fa-refresh
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-registered"></i>
                                            fa-registered
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-remove"></i> fa-remove
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-reorder"></i> fa-reorder
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-reply"></i> fa-reply</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-reply-all"></i>
                                            fa-reply-all
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-retweet"></i> fa-retweet
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-road"></i> fa-road</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rocket"></i> fa-rocket
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rss"></i> fa-rss</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rss-square"></i>
                                            fa-rss-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-search"></i> fa-search
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-search-minus"></i>
                                            fa-search-minus
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-search-plus"></i>
                                            fa-search-plus
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-send"></i> fa-send <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-send-o"></i> fa-send-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-server"></i> fa-server
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-share"></i> fa-share</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-share-alt"></i>
                                            fa-share-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-share-alt-square"></i>
                                            fa-share-alt-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-share-square"></i>
                                            fa-share-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-share-square-o"></i>
                                            fa-share-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-shield"></i> fa-shield
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ship"></i> fa-ship</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-shopping-cart"></i>
                                            fa-shopping-cart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sign-in"></i> fa-sign-in
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sign-out"></i> fa-sign-out
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-signal"></i> fa-signal
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sitemap"></i> fa-sitemap
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sliders"></i> fa-sliders
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-smile-o"></i> fa-smile-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-soccer-ball-o"></i>
                                            fa-soccer-ball-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort"></i> fa-sort</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-alpha-asc"></i>
                                            fa-sort-alpha-asc
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-alpha-desc"></i>
                                            fa-sort-alpha-desc
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-amount-asc"></i>
                                            fa-sort-amount-asc
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-amount-desc"></i>
                                            fa-sort-amount-desc
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-asc"></i> fa-sort-asc
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-desc"></i>
                                            fa-sort-desc
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-down"></i>
                                            fa-sort-down
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-numeric-asc"></i>
                                            fa-sort-numeric-asc
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-numeric-desc"></i>
                                            fa-sort-numeric-desc
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sort-up"></i> fa-sort-up
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-space-shuttle"></i>
                                            fa-space-shuttle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-spinner"></i> fa-spinner
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-spoon"></i> fa-spoon</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-square"></i> fa-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-square-o"></i> fa-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-star"></i> fa-star</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-star-half"></i>
                                            fa-star-half
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-star-half-empty"></i>
                                            fa-star-half-empty
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-star-half-full"></i>
                                            fa-star-half-full
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-star-half-o"></i>
                                            fa-star-half-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-star-o"></i> fa-star-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sticky-note"></i>
                                            fa-sticky-note
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sticky-note-o"></i>
                                            fa-sticky-note-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-street-view"></i>
                                            fa-street-view
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-suitcase"></i> fa-suitcase
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sun-o"></i> fa-sun-o</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-support"></i> fa-support
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tablet"></i> fa-tablet
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tachometer"></i>
                                            fa-tachometer
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tag"></i> fa-tag</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tags"></i> fa-tags</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tasks"></i> fa-tasks</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-taxi"></i> fa-taxi</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-television"></i>
                                            fa-television
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-terminal"></i> fa-terminal
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumb-tack"></i>
                                            fa-thumb-tack
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumbs-down"></i>
                                            fa-thumbs-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumbs-o-down"></i>
                                            fa-thumbs-o-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumbs-o-up"></i>
                                            fa-thumbs-o-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumbs-up"></i>
                                            fa-thumbs-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ticket"></i> fa-ticket
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-times"></i> fa-times</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-times-circle"></i>
                                            fa-times-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-times-circle-o"></i>
                                            fa-times-circle-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tint"></i> fa-tint</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-down"></i>
                                            fa-toggle-down
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-left"></i>
                                            fa-toggle-left
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-off"></i>
                                            fa-toggle-off
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-on"></i>
                                            fa-toggle-on
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-right"></i>
                                            fa-toggle-right
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-up"></i>
                                            fa-toggle-up
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-trademark"></i>
                                            fa-trademark
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-trash"></i> fa-trash</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-trash-o"></i> fa-trash-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tree"></i> fa-tree</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-trophy"></i> fa-trophy
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-truck"></i> fa-truck</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tty"></i> fa-tty</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tv"></i> fa-tv
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-umbrella"></i> fa-umbrella
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-university"></i>
                                            fa-university
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-unlock"></i> fa-unlock
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-unlock-alt"></i>
                                            fa-unlock-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-unsorted"></i> fa-unsorted
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-upload"></i> fa-upload
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-user"></i> fa-user</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-user-plus"></i>
                                            fa-user-plus
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-user-secret"></i>
                                            fa-user-secret
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-user-times"></i>
                                            fa-user-times
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-users"></i> fa-users</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-video-camera"></i>
                                            fa-video-camera
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-volume-down"></i>
                                            fa-volume-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-volume-off"></i>
                                            fa-volume-off
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-volume-up"></i>
                                            fa-volume-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-warning"></i> fa-warning
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wheelchair"></i>
                                            fa-wheelchair
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wifi"></i> fa-wifi</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wrench"></i> fa-wrench
                                        </div>
                                    </div>
                                </section>

                                <section id="hand">
                                    <h4 class="page-header">Hand Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-grab-o"></i>
                                            fa-hand-grab-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-lizard-o"></i>
                                            fa-hand-lizard-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-o-down"></i>
                                            fa-hand-o-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-o-left"></i>
                                            fa-hand-o-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-o-right"></i>
                                            fa-hand-o-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-o-up"></i>
                                            fa-hand-o-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-paper-o"></i>
                                            fa-hand-paper-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-peace-o"></i>
                                            fa-hand-peace-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-pointer-o"></i>
                                            fa-hand-pointer-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-rock-o"></i>
                                            fa-hand-rock-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-scissors-o"></i>
                                            fa-hand-scissors-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-spock-o"></i>
                                            fa-hand-spock-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-stop-o"></i>
                                            fa-hand-stop-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumbs-down"></i>
                                            fa-thumbs-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumbs-o-down"></i>
                                            fa-thumbs-o-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumbs-o-up"></i>
                                            fa-thumbs-o-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-thumbs-up"></i>
                                            fa-thumbs-up
                                        </div>
                                    </div>
                                </section>

                                <section id="transportation">
                                    <h4 class="page-header">Transportation Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ambulance"></i>
                                            fa-ambulance
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-automobile"></i>
                                            fa-automobile
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bicycle"></i> fa-bicycle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bus"></i> fa-bus</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cab"></i> fa-cab <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-car"></i> fa-car</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fighter-jet"></i>
                                            fa-fighter-jet
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-motorcycle"></i>
                                            fa-motorcycle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plane"></i> fa-plane</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rocket"></i> fa-rocket
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ship"></i> fa-ship</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-space-shuttle"></i>
                                            fa-space-shuttle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-subway"></i> fa-subway
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-taxi"></i> fa-taxi</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-train"></i> fa-train</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-truck"></i> fa-truck</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wheelchair"></i>
                                            fa-wheelchair
                                        </div>
                                    </div>
                                </section>

                                <section id="gender">
                                    <h4 class="page-header">Gender Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-genderless"></i>
                                            fa-genderless
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-intersex"></i> fa-intersex
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mars"></i> fa-mars</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mars-double"></i>
                                            fa-mars-double
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mars-stroke"></i>
                                            fa-mars-stroke
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mars-stroke-h"></i>
                                            fa-mars-stroke-h
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mars-stroke-v"></i>
                                            fa-mars-stroke-v
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-mercury"></i> fa-mercury
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-neuter"></i> fa-neuter
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-transgender"></i>
                                            fa-transgender
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-transgender-alt"></i>
                                            fa-transgender-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-venus"></i> fa-venus</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-venus-double"></i>
                                            fa-venus-double
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-venus-mars"></i>
                                            fa-venus-mars
                                        </div>
                                    </div>
                                </section>

                                <section id="file-type">
                                    <h2 class="page-header">File Type Icons</h2>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file"></i> fa-file</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-archive-o"></i>
                                            fa-file-archive-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-audio-o"></i>
                                            fa-file-audio-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-code-o"></i>
                                            fa-file-code-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-excel-o"></i>
                                            fa-file-excel-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-image-o"></i>
                                            fa-file-image-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-movie-o"></i>
                                            fa-file-movie-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-o"></i> fa-file-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-pdf-o"></i>
                                            fa-file-pdf-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-photo-o"></i>
                                            fa-file-photo-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-picture-o"></i>
                                            fa-file-picture-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-powerpoint-o"></i>
                                            fa-file-powerpoint-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-sound-o"></i>
                                            fa-file-sound-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-text"></i>
                                            fa-file-text
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-text-o"></i>
                                            fa-file-text-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-video-o"></i>
                                            fa-file-video-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-word-o"></i>
                                            fa-file-word-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-zip-o"></i>
                                            fa-file-zip-o
                                            <span class="text-muted">(alias)</span></div>
                                    </div>
                                </section>

                                <section id="spinner">
                                    <h2 class="page-header">Spinner Icons</h2>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-circle-o-notch"></i>
                                            fa-circle-o-notch
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cog"></i> fa-cog</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gear"></i> fa-gear <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-refresh"></i> fa-refresh
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-spinner"></i> fa-spinner
                                        </div>
                                    </div>
                                </section>

                                <section id="form-control">
                                    <h4 class="page-header">Form Control Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-check-square"></i>
                                            fa-check-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-check-square-o"></i>
                                            fa-check-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-circle"></i> fa-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-circle-o"></i> fa-circle-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-dot-circle-o"></i>
                                            fa-dot-circle-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-minus-square"></i>
                                            fa-minus-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-minus-square-o"></i>
                                            fa-minus-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plus-square"></i>
                                            fa-plus-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plus-square-o"></i>
                                            fa-plus-square-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-square"></i> fa-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-square-o"></i> fa-square-o
                                        </div>
                                    </div>
                                </section>

                                <section id="payment">
                                    <h4 class="page-header">Payment Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-amex"></i> fa-cc-amex
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-diners-club"></i>
                                            fa-cc-diners-club
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-discover"></i>
                                            fa-cc-discover
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-jcb"></i> fa-cc-jcb
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-mastercard"></i>
                                            fa-cc-mastercard
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-paypal"></i>
                                            fa-cc-paypal
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-stripe"></i>
                                            fa-cc-stripe
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-visa"></i> fa-cc-visa
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-credit-card"></i>
                                            fa-credit-card
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-google-wallet"></i>
                                            fa-google-wallet
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paypal"></i> fa-paypal
                                        </div>
                                    </div>
                                </section>

                                <section id="chart">
                                    <h4 class="page-header">Chart Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-area-chart"></i>
                                            fa-area-chart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bar-chart"></i>
                                            fa-bar-chart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bar-chart-o"></i>
                                            fa-bar-chart-o
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-line-chart"></i>
                                            fa-line-chart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pie-chart"></i>
                                            fa-pie-chart
                                        </div>
                                    </div>
                                </section>

                                <section id="currency">
                                    <h4 class="page-header">Currency Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bitcoin"></i> fa-bitcoin
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-btc"></i> fa-btc</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cny"></i> fa-cny <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-dollar"></i> fa-dollar
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-eur"></i> fa-eur</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-euro"></i> fa-euro <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gbp"></i> fa-gbp</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gg"></i> fa-gg</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gg-circle"></i>
                                            fa-gg-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ils"></i> fa-ils</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-inr"></i> fa-inr</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-jpy"></i> fa-jpy</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-krw"></i> fa-krw</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-money"></i> fa-money</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rmb"></i> fa-rmb <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rouble"></i> fa-rouble
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rub"></i> fa-rub</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ruble"></i> fa-ruble <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rupee"></i> fa-rupee <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-shekel"></i> fa-shekel
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sheqel"></i> fa-sheqel
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-try"></i> fa-try</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-turkish-lira"></i>
                                            fa-turkish-lira
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-usd"></i> fa-usd</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-won"></i> fa-won <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-yen"></i> fa-yen <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                    </div>
                                </section>

                                <section id="text-editor">
                                    <h4 class="page-header">Text Editor Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-align-center"></i>
                                            fa-align-center
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-align-justify"></i>
                                            fa-align-justify
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-align-left"></i>
                                            fa-align-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-align-right"></i>
                                            fa-align-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bold"></i> fa-bold</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chain"></i> fa-chain <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chain-broken"></i>
                                            fa-chain-broken
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-clipboard"></i>
                                            fa-clipboard
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-columns"></i> fa-columns
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-copy"></i> fa-copy <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cut"></i> fa-cut <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-dedent"></i> fa-dedent
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-eraser"></i> fa-eraser
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file"></i> fa-file</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-o"></i> fa-file-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-text"></i>
                                            fa-file-text
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-file-text-o"></i>
                                            fa-file-text-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-files-o"></i> fa-files-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-floppy-o"></i> fa-floppy-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-font"></i> fa-font</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-header"></i> fa-header
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-indent"></i> fa-indent
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-italic"></i> fa-italic
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-link"></i> fa-link</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-list"></i> fa-list</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-list-alt"></i> fa-list-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-list-ol"></i> fa-list-ol
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-list-ul"></i> fa-list-ul
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-outdent"></i> fa-outdent
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paperclip"></i>
                                            fa-paperclip
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paragraph"></i>
                                            fa-paragraph
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paste"></i> fa-paste <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-repeat"></i> fa-repeat
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rotate-left"></i>
                                            fa-rotate-left
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rotate-right"></i>
                                            fa-rotate-right
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-save"></i> fa-save <span
                                                class="text-muted">(alias)</span>
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-scissors"></i> fa-scissors
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-strikethrough"></i>
                                            fa-strikethrough
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-subscript"></i>
                                            fa-subscript
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-superscript"></i>
                                            fa-superscript
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-table"></i> fa-table</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-text-height"></i>
                                            fa-text-height
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-text-width"></i>
                                            fa-text-width
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-th"></i> fa-th</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-th-large"></i> fa-th-large
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-th-list"></i> fa-th-list
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-underline"></i>
                                            fa-underline
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-undo"></i> fa-undo</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-unlink"></i> fa-unlink
                                            <span class="text-muted">(alias)</span></div>
                                    </div>
                                </section>

                                <section id="directional">
                                    <h4 class="page-header">Directional Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angle-double-down"></i>
                                            fa-angle-double-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angle-double-left"></i>
                                            fa-angle-double-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angle-double-right"></i>
                                            fa-angle-double-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angle-double-up"></i>
                                            fa-angle-double-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angle-down"></i>
                                            fa-angle-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angle-left"></i>
                                            fa-angle-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angle-right"></i>
                                            fa-angle-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angle-up"></i> fa-angle-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-circle-down"></i>
                                            fa-arrow-circle-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-circle-left"></i>
                                            fa-arrow-circle-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-circle-o-down"></i>
                                            fa-arrow-circle-o-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-circle-o-left"></i>
                                            fa-arrow-circle-o-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-circle-o-right"></i>
                                            fa-arrow-circle-o-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-circle-o-up"></i>
                                            fa-arrow-circle-o-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-circle-right"></i>
                                            fa-arrow-circle-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-circle-up"></i>
                                            fa-arrow-circle-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-down"></i>
                                            fa-arrow-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-left"></i>
                                            fa-arrow-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-right"></i>
                                            fa-arrow-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrow-up"></i> fa-arrow-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrows"></i> fa-arrows
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrows-alt"></i>
                                            fa-arrows-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrows-h"></i> fa-arrows-h
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrows-v"></i> fa-arrows-v
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-down"></i>
                                            fa-caret-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-left"></i>
                                            fa-caret-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-right"></i>
                                            fa-caret-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-square-o-down"></i>
                                            fa-caret-square-o-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-square-o-left"></i>
                                            fa-caret-square-o-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-square-o-right"></i>
                                            fa-caret-square-o-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-square-o-up"></i>
                                            fa-caret-square-o-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-caret-up"></i> fa-caret-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chevron-circle-down"></i>
                                            fa-chevron-circle-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chevron-circle-left"></i>
                                            fa-chevron-circle-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chevron-circle-right"></i>
                                            fa-chevron-circle-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chevron-circle-up"></i>
                                            fa-chevron-circle-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chevron-down"></i>
                                            fa-chevron-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chevron-left"></i>
                                            fa-chevron-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chevron-right"></i>
                                            fa-chevron-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chevron-up"></i>
                                            fa-chevron-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-exchange"></i> fa-exchange
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-o-down"></i>
                                            fa-hand-o-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-o-left"></i>
                                            fa-hand-o-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-o-right"></i>
                                            fa-hand-o-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hand-o-up"></i>
                                            fa-hand-o-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-long-arrow-down"></i>
                                            fa-long-arrow-down
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-long-arrow-left"></i>
                                            fa-long-arrow-left
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-long-arrow-right"></i>
                                            fa-long-arrow-right
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-long-arrow-up"></i>
                                            fa-long-arrow-up
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-down"></i>
                                            fa-toggle-down
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-left"></i>
                                            fa-toggle-left
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-right"></i>
                                            fa-toggle-right
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-toggle-up"></i>
                                            fa-toggle-up
                                            <span class="text-muted">(alias)</span></div>
                                    </div>
                                </section>

                                <section id="video-player">
                                    <h4 class="page-header">Video Player Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-arrows-alt"></i>
                                            fa-arrows-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-backward"></i> fa-backward
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-compress"></i> fa-compress
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-eject"></i> fa-eject</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-expand"></i> fa-expand
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fast-backward"></i>
                                            fa-fast-backward
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fast-forward"></i>
                                            fa-fast-forward
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-forward"></i> fa-forward
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pause"></i> fa-pause</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-play"></i> fa-play</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-play-circle"></i>
                                            fa-play-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-play-circle-o"></i>
                                            fa-play-circle-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-random"></i> fa-random
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-step-backward"></i>
                                            fa-step-backward
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-step-forward"></i>
                                            fa-step-forward
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-stop"></i> fa-stop</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-youtube-play"></i>
                                            fa-youtube-play
                                        </div>
                                    </div>
                                </section>

                                <section id="brand">
                                    <h4 class="page-header">Brand Icons</h4>

                                    <div class="row fontawesome-icon-list">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-500px"></i> fa-500px</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-adn"></i> fa-adn</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-amazon"></i> fa-amazon
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-android"></i> fa-android
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-angellist"></i>
                                            fa-angellist
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-apple"></i> fa-apple</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-behance"></i> fa-behance
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-behance-square"></i>
                                            fa-behance-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bitbucket"></i>
                                            fa-bitbucket
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bitbucket-square"></i>
                                            fa-bitbucket-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-bitcoin"></i> fa-bitcoin
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-black-tie"></i>
                                            fa-black-tie
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-btc"></i> fa-btc</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-buysellads"></i>
                                            fa-buysellads
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-amex"></i> fa-cc-amex
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-diners-club"></i>
                                            fa-cc-diners-club
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-discover"></i>
                                            fa-cc-discover
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-jcb"></i> fa-cc-jcb
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-mastercard"></i>
                                            fa-cc-mastercard
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-paypal"></i>
                                            fa-cc-paypal
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-stripe"></i>
                                            fa-cc-stripe
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-cc-visa"></i> fa-cc-visa
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-chrome"></i> fa-chrome
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-codepen"></i> fa-codepen
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-connectdevelop"></i>
                                            fa-connectdevelop
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-contao"></i> fa-contao
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-css3"></i> fa-css3</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-dashcube"></i> fa-dashcube
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-delicious"></i>
                                            fa-delicious
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-deviantart"></i>
                                            fa-deviantart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-digg"></i> fa-digg</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-dribbble"></i> fa-dribbble
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-dropbox"></i> fa-dropbox
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-drupal"></i> fa-drupal
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-empire"></i> fa-empire
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-expeditedssl"></i>
                                            fa-expeditedssl
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-facebook"></i> fa-facebook
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-facebook-f"></i>
                                            fa-facebook-f
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-facebook-official"></i>
                                            fa-facebook-official
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-facebook-square"></i>
                                            fa-facebook-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-firefox"></i> fa-firefox
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-flickr"></i> fa-flickr
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-fonticons"></i>
                                            fa-fonticons
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-forumbee"></i> fa-forumbee
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-foursquare"></i>
                                            fa-foursquare
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ge"></i> fa-ge
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-get-pocket"></i>
                                            fa-get-pocket
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gg"></i> fa-gg</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gg-circle"></i>
                                            fa-gg-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-git"></i> fa-git</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-git-square"></i>
                                            fa-git-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-github"></i> fa-github
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-github-alt"></i>
                                            fa-github-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-github-square"></i>
                                            fa-github-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gittip"></i> fa-gittip
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-google"></i> fa-google
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-google-plus"></i>
                                            fa-google-plus
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-google-plus-square"></i>
                                            fa-google-plus-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-google-wallet"></i>
                                            fa-google-wallet
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-gratipay"></i> fa-gratipay
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hacker-news"></i>
                                            fa-hacker-news
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-houzz"></i> fa-houzz</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-html5"></i> fa-html5</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-instagram"></i>
                                            fa-instagram
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-internet-explorer"></i>
                                            fa-internet-explorer
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ioxhost"></i> fa-ioxhost
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-joomla"></i> fa-joomla
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-jsfiddle"></i> fa-jsfiddle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-lastfm"></i> fa-lastfm
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-lastfm-square"></i>
                                            fa-lastfm-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-leanpub"></i> fa-leanpub
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-linkedin"></i> fa-linkedin
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-linkedin-square"></i>
                                            fa-linkedin-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-linux"></i> fa-linux</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-maxcdn"></i> fa-maxcdn
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-meanpath"></i> fa-meanpath
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-medium"></i> fa-medium
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-odnoklassniki"></i>
                                            fa-odnoklassniki
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-odnoklassniki-square"></i>
                                            fa-odnoklassniki-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-opencart"></i> fa-opencart
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-openid"></i> fa-openid
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-opera"></i> fa-opera</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-optin-monster"></i>
                                            fa-optin-monster
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pagelines"></i>
                                            fa-pagelines
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-paypal"></i> fa-paypal
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pied-piper"></i>
                                            fa-pied-piper
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pied-piper-alt"></i>
                                            fa-pied-piper-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pinterest"></i>
                                            fa-pinterest
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pinterest-p"></i>
                                            fa-pinterest-p
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-pinterest-square"></i>
                                            fa-pinterest-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-qq"></i> fa-qq</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ra"></i> fa-ra
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-rebel"></i> fa-rebel</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-reddit"></i> fa-reddit
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-reddit-square"></i>
                                            fa-reddit-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-renren"></i> fa-renren
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-safari"></i> fa-safari
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-sellsy"></i> fa-sellsy
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-share-alt"></i>
                                            fa-share-alt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-share-alt-square"></i>
                                            fa-share-alt-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-shirtsinbulk"></i>
                                            fa-shirtsinbulk
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-simplybuilt"></i>
                                            fa-simplybuilt
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-skyatlas"></i> fa-skyatlas
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-skype"></i> fa-skype</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-slack"></i> fa-slack</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-slideshare"></i>
                                            fa-slideshare
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-soundcloud"></i>
                                            fa-soundcloud
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-spotify"></i> fa-spotify
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-stack-exchange"></i>
                                            fa-stack-exchange
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-stack-overflow"></i>
                                            fa-stack-overflow
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-steam"></i> fa-steam</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-steam-square"></i>
                                            fa-steam-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-stumbleupon"></i>
                                            fa-stumbleupon
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-stumbleupon-circle"></i>
                                            fa-stumbleupon-circle
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tencent-weibo"></i>
                                            fa-tencent-weibo
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-trello"></i> fa-trello
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tripadvisor"></i>
                                            fa-tripadvisor
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tumblr"></i> fa-tumblr
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-tumblr-square"></i>
                                            fa-tumblr-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-twitch"></i> fa-twitch
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-twitter"></i> fa-twitter
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-twitter-square"></i>
                                            fa-twitter-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-viacoin"></i> fa-viacoin
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-vimeo"></i> fa-vimeo</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-vimeo-square"></i>
                                            fa-vimeo-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-vine"></i> fa-vine</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-vk"></i> fa-vk</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wechat"></i> fa-wechat
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-weibo"></i> fa-weibo</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-weixin"></i> fa-weixin
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-whatsapp"></i> fa-whatsapp
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wikipedia-w"></i>
                                            fa-wikipedia-w
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-windows"></i> fa-windows
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wordpress"></i>
                                            fa-wordpress
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-xing"></i> fa-xing</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-xing-square"></i>
                                            fa-xing-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-y-combinator"></i>
                                            fa-y-combinator
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-y-combinator-square"></i>
                                            fa-y-combinator-square <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-yahoo"></i> fa-yahoo</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-yc"></i> fa-yc
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-yc-square"></i>
                                            fa-yc-square
                                            <span class="text-muted">(alias)</span></div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-yelp"></i> fa-yelp</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-youtube"></i> fa-youtube
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-youtube-play"></i>
                                            fa-youtube-play
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-youtube-square"></i>
                                            fa-youtube-square
                                        </div>
                                    </div>
                                </section>

                                <section id="medical">
                                    <h4 class="page-header">Medical Icons</h4>

                                    <div class="row">
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-ambulance"></i>
                                            fa-ambulance
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-h-square"></i> fa-h-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-heart"></i> fa-heart</div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-heart-o"></i> fa-heart-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-heartbeat"></i>
                                            fa-heartbeat
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-hospital-o"></i>
                                            fa-hospital-o
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-medkit"></i> fa-medkit
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-plus-square"></i>
                                            fa-plus-square
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-stethoscope"></i>
                                            fa-stethoscope
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-user-md"></i> fa-user-md
                                        </div>
                                        <div class="col-md-3 col-sm-4"><i class="fa fa-wheelchair"></i>
                                            fa-wheelchair
                                        </div>
                                    </div>
                                </section>
                            </div>
                            <div class="tab-pane " id="glyphicons">
                                <ul class="bs-glyphicons">
                                    <li>
                                        <span class="glyphicon glyphicon-asterisk"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-asterisk</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-plus"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-plus</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-euro"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-euro</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-eur"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-eur</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-minus"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-minus</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-cloud"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-cloud</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-envelope"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-envelope</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-pencil"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-pencil</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-glass"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-glass</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-music"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-music</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-search"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-search</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-heart"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-heart</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-star</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-star-empty"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-star-empty</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-user"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-user</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-film"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-film</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-th-large"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-th-large</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-th"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-th</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-th-list"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-th-list</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-ok"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-ok</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-remove"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-remove</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-zoom-in"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-zoom-in</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-zoom-out"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-zoom-out</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-off"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-off</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-signal"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-signal</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-cog"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-cog</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-trash"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-trash</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-home"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-home</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-file"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-file</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-time"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-time</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-road"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-road</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-download-alt"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-download-alt</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-download"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-download</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-upload"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-upload</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-inbox"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-inbox</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-play-circle"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-play-circle</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-repeat"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-repeat</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-refresh"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-refresh</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-list-alt"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-list-alt</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-lock"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-lock</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-flag"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-flag</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-headphones"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-headphones</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-volume-off"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-volume-off</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-volume-down"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-volume-down</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-volume-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-volume-up</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-qrcode"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-qrcode</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-barcode"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-barcode</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-tag"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-tag</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-tags"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-tags</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-book"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-book</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-bookmark"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-bookmark</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-print"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-print</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-camera"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-camera</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-font"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-font</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-bold"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-bold</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-italic"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-italic</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-text-height"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-text-height</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-text-width"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-text-width</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-align-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-align-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-align-center"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-align-center</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-align-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-align-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-align-justify"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-align-justify</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-list"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-list</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-indent-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-indent-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-indent-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-indent-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-facetime-video"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-facetime-video</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-picture"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-picture</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-map-marker"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-map-marker</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-adjust"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-adjust</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-tint"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-tint</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-edit"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-edit</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-share"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-share</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-check"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-check</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-move"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-move</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-step-backward"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-step-backward</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-fast-backward"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-fast-backward</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-backward"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-backward</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-play"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-play</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-pause"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-pause</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-stop"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-stop</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-forward"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-forward</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-fast-forward"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-fast-forward</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-step-forward"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-step-forward</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-eject"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-eject</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-chevron-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-chevron-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-plus-sign"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-plus-sign</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-minus-sign"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-minus-sign</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-remove-sign"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-remove-sign</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-ok-sign"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-ok-sign</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-question-sign"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-question-sign</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-info-sign"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-info-sign</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-screenshot"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-screenshot</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-remove-circle"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-remove-circle</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-ok-circle"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-ok-circle</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-ban-circle"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-ban-circle</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-arrow-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-arrow-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-arrow-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-arrow-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-arrow-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-arrow-up</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-arrow-down"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-arrow-down</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-share-alt"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-share-alt</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-resize-full"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-resize-full</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-resize-small"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-resize-small</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-exclamation-sign"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-exclamation-sign</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-gift"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-gift</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-leaf"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-leaf</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-fire"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-fire</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-eye-open"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-eye-open</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-eye-close"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-eye-close</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-warning-sign"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-warning-sign</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-plane"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-plane</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-calendar"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-calendar</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-random"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-random</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-comment"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-comment</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-magnet"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-magnet</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-chevron-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-chevron-up</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-chevron-down"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-chevron-down</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-retweet"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-retweet</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-shopping-cart"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-shopping-cart</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-folder-close"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-folder-close</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-folder-open"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-folder-open</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-resize-vertical"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-resize-vertical</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-resize-horizontal"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-resize-horizontal</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-hdd"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-hdd</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-bullhorn"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-bullhorn</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-bell"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-bell</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-certificate"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-certificate</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-thumbs-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-thumbs-up</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-thumbs-down"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-thumbs-down</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-hand-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-hand-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-hand-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-hand-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-hand-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-hand-up</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-hand-down"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-hand-down</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-circle-arrow-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-circle-arrow-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-circle-arrow-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-circle-arrow-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-circle-arrow-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-circle-arrow-up</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-circle-arrow-down"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-circle-arrow-down</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-globe"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-globe</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-wrench"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-wrench</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-tasks"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-tasks</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-filter"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-filter</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-briefcase"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-briefcase</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-fullscreen"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-fullscreen</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-dashboard"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-dashboard</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-paperclip"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-paperclip</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-heart-empty"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-heart-empty</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-link"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-link</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-phone"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-phone</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-pushpin"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-pushpin</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-usd"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-usd</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-gbp"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-gbp</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sort"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sort</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sort-by-alphabet"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sort-by-alphabet</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sort-by-alphabet-alt"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sort-by-alphabet-alt</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sort-by-order"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sort-by-order</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sort-by-order-alt"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sort-by-order-alt</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sort-by-attributes"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sort-by-attributes</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sort-by-attributes-alt"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sort-by-attributes-alt</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-unchecked"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-unchecked</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-expand"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-expand</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-collapse-down"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-collapse-down</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-collapse-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-collapse-up</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-log-in"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-log-in</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-flash"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-flash</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-log-out"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-log-out</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-new-window"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-new-window</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-record"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-record</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-save"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-save</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-open"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-open</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-saved"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-saved</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-import"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-import</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-export"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-export</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-send"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-send</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-floppy-disk"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-floppy-disk</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-floppy-saved"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-floppy-saved</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-floppy-remove"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-floppy-remove</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-floppy-save"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-floppy-save</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-floppy-open"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-floppy-open</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-credit-card"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-credit-card</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-transfer"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-transfer</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-cutlery"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-cutlery</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-header"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-header</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-compressed"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-compressed</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-earphone"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-earphone</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-phone-alt"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-phone-alt</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-tower"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-tower</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-stats"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-stats</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sd-video"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sd-video</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-hd-video"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-hd-video</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-subtitles"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-subtitles</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sound-stereo"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sound-stereo</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sound-dolby"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sound-dolby</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sound-5-1"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sound-5-1</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sound-6-1"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sound-6-1</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sound-7-1"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sound-7-1</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-copyright-mark"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-copyright-mark</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-registration-mark"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-registration-mark</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-cloud-download"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-cloud-download</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-cloud-upload"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-cloud-upload</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-tree-conifer"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-tree-conifer</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-tree-deciduous"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-tree-deciduous</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-cd"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-cd</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-save-file"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-save-file</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-open-file"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-open-file</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-level-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-level-up</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-copy"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-copy</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-paste"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-paste</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-alert"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-alert</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-equalizer"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-equalizer</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-king"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-king</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-queen"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-queen</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-pawn"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-pawn</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-bishop"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-bishop</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-knight"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-knight</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-baby-formula"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-baby-formula</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-tent"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-tent</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-blackboard"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-blackboard</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-bed"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-bed</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-apple"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-apple</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-erase"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-erase</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-hourglass"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-hourglass</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-lamp"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-lamp</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-duplicate"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-duplicate</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-piggy-bank"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-piggy-bank</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-scissors"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-scissors</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-bitcoin"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-bitcoin</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-btc"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-btc</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-xbt"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-xbt</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-yen"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-yen</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-jpy"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-jpy</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-ruble"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-ruble</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-rub"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-rub</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-scale"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-scale</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-ice-lolly"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-ice-lolly</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-ice-lolly-tasted"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-ice-lolly-tasted</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-education"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-education</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-option-horizontal"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-option-horizontal</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-option-vertical"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-option-vertical</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-menu-hamburger"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-menu-hamburger</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-modal-window"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-modal-window</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-oil"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-oil</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-grain"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-grain</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-sunglasses"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-sunglasses</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-text-size"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-text-size</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-text-color"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-text-color</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-text-background"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-text-background</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-object-align-top"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-object-align-top</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-object-align-bottom"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-object-align-bottom</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-object-align-horizontal"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-object-align-horizontal</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-object-align-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-object-align-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-object-align-vertical"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-object-align-vertical</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-object-align-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-object-align-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-triangle-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-triangle-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-triangle-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-triangle-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-triangle-bottom"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-triangle-bottom</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-triangle-top"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-triangle-top</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-console"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-console</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-superscript"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-superscript</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-subscript"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-subscript</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-menu-left"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-menu-left</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-menu-right"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-menu-right</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-menu-down"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-menu-down</span>
                                    </li>
                                    <li>
                                        <span class="glyphicon glyphicon-menu-up"></span>
                                        <span class="glyphicon-class">glyphicon glyphicon-menu-up</span>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-pane " id="icons">
                                <ul class="icons">
                                    <li class="ion-ionic" data-pack="default"
                                        data-tags="badass, framework, sexy, hawt"></li>
                                    <li class="ion-arrow-up-a" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-right-a" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-down-a" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-left-a" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-up-b" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-right-b" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-down-b" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-left-b" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-up-c" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-right-c" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-down-c" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-left-c" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-return-right" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-return-left" data-pack="default" data-tags=""></li>
                                    <li class="ion-arrow-swap" data-pack="default" data-tags="switch, flip"></li>
                                    <li class="ion-arrow-shrink" data-pack="default" data-tags="pinch"></li>
                                    <li class="ion-arrow-expand" data-pack="default" data-tags="fullscreen"></li>
                                    <li class="ion-arrow-move" data-pack="default" data-tags="drag"></li>
                                    <li class="ion-arrow-resize" data-pack="default" data-tags="drag"></li>
                                    <li class="ion-chevron-up" data-pack="default" data-tags="arrow, up"></li>
                                    <li class="ion-chevron-right" data-pack="default" data-tags="arrow, right"></li>
                                    <li class="ion-chevron-down" data-pack="default" data-tags="arrow, down"></li>
                                    <li class="ion-chevron-left" data-pack="default" data-tags="arrow, left"></li>
                                    <li class="ion-navicon-round" data-pack="default"
                                        data-tags="menu, hamburger, slide menu"></li>
                                    <li class="ion-navicon" data-pack="default"
                                        data-tags="menu, hamburger, slide menu"></li>
                                    <li class="ion-drag" data-pack="default" data-tags="reorder, move, drag"></li>
                                    <li class="ion-log-in" data-pack="default" data-tags="sign in, "></li>
                                    <li class="ion-log-out" data-pack="default" data-tags="sign out"></li>
                                    <li class="ion-checkmark-round" data-pack="default"
                                        data-tags="complete, finished, success, on"></li>
                                    <li class="ion-checkmark" data-pack="default"
                                        data-tags="complete, finished, success, on"></li>
                                    <li class="ion-checkmark-circled" data-pack="default"
                                        data-tags="complete, finished, success, on"></li>
                                    <li class="ion-close-round" data-pack="default" data-tags="delete, trash, kill, x"></li>
                                    <li class="ion-close" data-pack="default" data-tags="delete, trash, kill, x"></li>
                                    <li class="ion-close-circled" data-pack="default"
                                        data-tags="delete, trash, kill, x"></li>
                                    <li class="ion-plus-round" data-pack="default"
                                        data-tags="add, include, new, invite, +"></li>
                                    <li class="ion-plus" data-pack="default" data-tags="add, include, new, invite, +"></li>
                                    <li class="ion-plus-circled" data-pack="default"
                                        data-tags="add, include, new, invite, +"></li>
                                    <li class="ion-minus-round" data-pack="default"
                                        data-tags="hide, remove, minimize, -"></li>
                                    <li class="ion-minus" data-pack="default" data-tags="hide, remove, minimize, -"></li>
                                    <li class="ion-minus-circled" data-pack="default"
                                        data-tags="hide, remove, minimize, -"></li>
                                    <li class="ion-information" data-pack="default" data-tags="help, more, tooltip"></li>
                                    <li class="ion-information-circled" data-pack="default"
                                        data-tags="help, more, tooltip"></li>
                                    <li class="ion-help" data-pack="default" data-tags="question, ?"></li>
                                    <li class="ion-help-circled" data-pack="default" data-tags="question, ?"></li>
                                    <li class="ion-backspace-outline" data-pack="default"
                                        data-tags="delete, remove, back"></li>
                                    <li class="ion-backspace" data-pack="default" data-tags="delete, remove, back"></li>
                                    <li class="ion-help-buoy" data-pack="default" data-tags="question, ?"></li>
                                    <li class="ion-asterisk" data-pack="default" data-tags="favorite, mark, star"></li>
                                    <li class="ion-alert" data-pack="default"
                                        data-tags="attention, warning, notice, !, exclamation"></li>
                                    <li class="ion-alert-circled" data-pack="default"
                                        data-tags="attention, warning, notice, !, exclamation"></li>
                                    <li class="ion-refresh" data-pack="default" data-tags="reload, renew"></li>
                                    <li class="ion-loop" data-pack="default" data-tags="refresh"></li>
                                    <li class="ion-shuffle" data-pack="default" data-tags="random"></li>
                                    <li class="ion-home" data-pack="default" data-tags="house"></li>
                                    <li class="ion-search" data-pack="default" data-tags="magnifying glass"></li>
                                    <li class="ion-flag" data-pack="default" data-tags="favorite, mark, star"></li>
                                    <li class="ion-star" data-pack="default" data-tags="favorite"></li>
                                    <li class="ion-heart" data-pack="default" data-tags="love"></li>
                                    <li class="ion-heart-broken" data-pack="default" data-tags="love"></li>
                                    <li class="ion-gear-a" data-pack="default" data-tags="settings, options, cog"></li>
                                    <li class="ion-gear-b" data-pack="default" data-tags="settings, options, cog"></li>
                                    <li class="ion-toggle-filled" data-pack="default"
                                        data-tags="settings, options, switch"></li>
                                    <li class="ion-toggle" data-pack="default" data-tags="settings, options, switch"></li>
                                    <li class="ion-settings" data-pack="default" data-tags="options, tools"></li>
                                    <li class="ion-wrench" data-pack="default" data-tags="settings, options, tools"></li>
                                    <li class="ion-hammer" data-pack="default" data-tags="settings, options, tools"></li>
                                    <li class="ion-edit" data-pack="default"
                                        data-tags="change, update, write, type, pencil"></li>
                                    <li class="ion-trash-a" data-pack="default" data-tags="delete, remove, dump"></li>
                                    <li class="ion-trash-b" data-pack="default" data-tags="delete, remove, dump"></li>
                                    <li class="ion-document" data-pack="default" data-tags="paper, file"></li>
                                    <li class="ion-document-text" data-pack="default" data-tags="paper, file"></li>
                                    <li class="ion-clipboard" data-pack="default" data-tags="write"></li>
                                    <li class="ion-scissors" data-pack="default" data-tags="cut"></li>
                                    <li class="ion-funnel" data-pack="default" data-tags="sort"></li>
                                    <li class="ion-bookmark" data-pack="default" data-tags="favorite, tag, save"></li>
                                    <li class="ion-email" data-pack="default" data-tags="snail, mail, inbox"></li>
                                    <li class="ion-email-unread" data-pack="default" data-tags="snail, mail, inbox"></li>
                                    <li class="ion-folder" data-pack="default" data-tags="snail, mail"></li>
                                    <li class="ion-filing" data-pack="default" data-tags="mail"></li>
                                    <li class="ion-archive" data-pack="default" data-tags="mail"></li>
                                    <li class="ion-reply" data-pack="default" data-tags="mail, undo"></li>
                                    <li class="ion-reply-all" data-pack="default" data-tags="mail"></li>
                                    <li class="ion-forward" data-pack="default" data-tags="mail, redo"></li>
                                    <li class="ion-share" data-pack="default" data-tags="outbound"></li>
                                    <li class="ion-paper-airplane" data-pack="default"
                                        data-tags="outbound, mail, letter, send"></li>
                                    <li class="ion-link" data-pack="default" data-tags="chain, anchor, href, attach"></li>
                                    <li class="ion-paperclip" data-pack="default" data-tags="attach"></li>
                                    <li class="ion-compose" data-pack="default" data-tags="write, compose, type"></li>
                                    <li class="ion-briefcase" data-pack="default" data-tags="store, organize"></li>
                                    <li class="ion-medkit" data-pack="default" data-tags="health"></li>
                                    <li class="ion-at" data-pack="default" data-tags="@"></li>
                                    <li class="ion-pound" data-pack="default" data-tags="hashtag, #"></li>
                                    <li class="ion-quote" data-pack="default" data-tags="chat, quotation"></li>
                                    <li class="ion-cloud" data-pack="default" data-tags="storage"></li>
                                    <li class="ion-upload" data-pack="default" data-tags="storage, cloud"></li>
                                    <li class="ion-more" data-pack="default" data-tags="circles"></li>
                                    <li class="ion-grid" data-pack="default" data-tags="menu"></li>
                                    <li class="ion-calendar" data-pack="default" data-tags="date, time, month, year"></li>
                                    <li class="ion-clock" data-pack="default"
                                        data-tags="time, watch, hours, minutes, seconds"></li>
                                    <li class="ion-compass" data-pack="default"
                                        data-tags="location, directions, navigation"></li>
                                    <li class="ion-pinpoint" data-pack="default" data-tags="gps, navigation"></li>
                                    <li class="ion-pin" data-pack="default" data-tags="gps, navigation"></li>
                                    <li class="ion-navigate" data-pack="default" data-tags="gps, location pin"></li>
                                    <li class="ion-location" data-pack="default" data-tags="gps, navigation, pin"></li>
                                    <li class="ion-map" data-pack="default" data-tags="gps, navigation, pin"></li>
                                    <li class="ion-lock-combination" data-pack="default" data-tags="padlock, security"></li>
                                    <li class="ion-locked" data-pack="default" data-tags="padlock, security"></li>
                                    <li class="ion-unlocked" data-pack="default" data-tags="padlock, security"></li>
                                    <li class="ion-key" data-pack="default" data-tags="access"></li>
                                    <li class="ion-arrow-graph-up-right" data-pack="default" data-tags="stats"></li>
                                    <li class="ion-arrow-graph-down-right" data-pack="default" data-tags="stats"></li>
                                    <li class="ion-arrow-graph-up-left" data-pack="default" data-tags="stats"></li>
                                    <li class="ion-arrow-graph-down-left" data-pack="default" data-tags="stats"></li>
                                    <li class="ion-stats-bars" data-pack="default" data-tags="data"></li>
                                    <li class="ion-connection-bars" data-pack="default" data-tags="data, stats"></li>
                                    <li class="ion-pie-graph" data-pack="default" data-tags="stats"></li>
                                    <li class="ion-chatbubble" data-pack="default" data-tags="talk"></li>
                                    <li class="ion-chatbubble-working" data-pack="default" data-tags="talk"></li>
                                    <li class="ion-chatbubbles" data-pack="default" data-tags="talk"></li>
                                    <li class="ion-chatbox" data-pack="default" data-tags="talk"></li>
                                    <li class="ion-chatbox-working" data-pack="default" data-tags="talk"></li>
                                    <li class="ion-chatboxes" data-pack="default" data-tags="talk"></li>
                                    <li class="ion-person" data-pack="default" data-tags="users, staff, head, human"></li>
                                    <li class="ion-person-add" data-pack="default"
                                        data-tags="users, staff, head, human, member, new"></li>
                                    <li class="ion-person-stalker" data-pack="default"
                                        data-tags="people, human, users, staff"></li>
                                    <li class="ion-woman" data-pack="default" data-tags="female, lady, girl, dudette"></li>
                                    <li class="ion-man" data-pack="default" data-tags="male, guy, boy, dude"></li>
                                    <li class="ion-female" data-pack="default" data-tags="lady, girl, dudette"></li>
                                    <li class="ion-male" data-pack="default" data-tags="male, guy, boy, dude"></li>
                                    <li class="ion-transgender" data-pack="default" data-tags=""></li>
                                    <li class="ion-fork" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-knife" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-spoon" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-soup-can-outline" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-soup-can" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-beer" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-wineglass" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-coffee" data-pack="default" data-tags="food, drink, eat, caffeine"></li>
                                    <li class="ion-icecream" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-pizza" data-pack="default" data-tags="food, drink, eat"></li>
                                    <li class="ion-power" data-pack="default" data-tags="on, off"></li>
                                    <li class="ion-mouse" data-pack="default" data-tags="computer"></li>
                                    <li class="ion-battery-full" data-pack="default" data-tags=""></li>
                                    <li class="ion-battery-half" data-pack="default" data-tags=""></li>
                                    <li class="ion-battery-low" data-pack="default" data-tags=""></li>
                                    <li class="ion-battery-empty" data-pack="default" data-tags=""></li>
                                    <li class="ion-battery-charging" data-pack="default" data-tags=""></li>
                                    <li class="ion-wifi" data-pack="default" data-tags="internet, connection"></li>
                                    <li class="ion-bluetooth" data-pack="default" data-tags="connection, cloud"></li>
                                    <li class="ion-calculator" data-pack="default"
                                        data-tags="math, arithmatic, numbers, addition, subtraction"></li>
                                    <li class="ion-camera" data-pack="default" data-tags="photo"></li>
                                    <li class="ion-eye" data-pack="default" data-tags="view, see, creeper"></li>
                                    <li class="ion-eye-disabled" data-pack="default" data-tags="view, see, creeper"></li>
                                    <li class="ion-flash" data-pack="default" data-tags="lightning, weather, whether"></li>
                                    <li class="ion-flash-off" data-pack="default" data-tags=""></li>
                                    <li class="ion-qr-scanner" data-pack="default" data-tags="reader"></li>
                                    <li class="ion-image" data-pack="default" data-tags="photo"></li>
                                    <li class="ion-images" data-pack="default" data-tags="photo"></li>
                                    <li class="ion-wand" data-pack="default"
                                        data-tags="images, levels, light, dark, settings"></li>
                                    <li class="ion-contrast" data-pack="default"
                                        data-tags="images, levels, light, dark, settings"></li>
                                    <li class="ion-aperture" data-pack="default"
                                        data-tags="images, levels, light, dark, settings"></li>
                                    <li class="ion-crop" data-pack="default"
                                        data-tags="images, levels, light, dark, settings"></li>
                                    <li class="ion-easel" data-pack="default" data-tags="images, art, create, color"></li>
                                    <li class="ion-paintbrush" data-pack="default"
                                        data-tags="images, art, create, color"></li>
                                    <li class="ion-paintbucket" data-pack="default"
                                        data-tags="images, art, create, color"></li>
                                    <li class="ion-monitor" data-pack="default" data-tags="thunderbolt, screen"></li>
                                    <li class="ion-laptop" data-pack="default" data-tags="macbook, apple, osx"></li>
                                    <li class="ion-ipad" data-pack="default"
                                        data-tags="tablet, mobile, apple, retina, device"></li>
                                    <li class="ion-iphone" data-pack="default"
                                        data-tags="smartphone, mobile, apple, retina, device"></li>
                                    <li class="ion-ipod" data-pack="default"
                                        data-tags="music, player, apple, retina, device"></li>
                                    <li class="ion-printer" data-pack="default" data-tags="paper"></li>
                                    <li class="ion-usb" data-pack="default" data-tags="digital, computer"></li>
                                    <li class="ion-outlet" data-pack="default"
                                        data-tags="digital, computer, electricity"></li>
                                    <li class="ion-bug" data-pack="default"
                                        data-tags="develop, program, hacker, error"></li>
                                    <li class="ion-code" data-pack="default" data-tags="develop, program, hacker"></li>
                                    <li class="ion-code-working" data-pack="default"
                                        data-tags="develop, program, hacker"></li>
                                    <li class="ion-code-download" data-pack="default"
                                        data-tags="develop, program, hacker"></li>
                                    <li class="ion-fork-repo" data-pack="default"
                                        data-tags="develop, program, hacker, github"></li>
                                    <li class="ion-network" data-pack="default"
                                        data-tags="develop, program, hacker, github"></li>
                                    <li class="ion-pull-request" data-pack="default"
                                        data-tags="develop, program, hacker, github"></li>
                                    <li class="ion-merge" data-pack="default"
                                        data-tags="develop, program, hacker, github"></li>
                                    <li class="ion-xbox" data-pack="default" data-tags="fun, games"></li>
                                    <li class="ion-playstation" data-pack="default" data-tags="fun, games"></li>
                                    <li class="ion-steam" data-pack="default" data-tags="fun, games"></li>
                                    <li class="ion-closed-captioning" data-pack="default"
                                        data-tags="movie, film, television"></li>
                                    <li class="ion-videocamera" data-pack="default"
                                        data-tags="movie, film, television"></li>
                                    <li class="ion-film-marker" data-pack="default" data-tags="film, cut, action"></li>
                                    <li class="ion-disc" data-pack="default" data-tags="cd, vinyl"></li>
                                    <li class="ion-headphone" data-pack="default" data-tags="music, earbuds, beats"></li>
                                    <li class="ion-music-note" data-pack="default" data-tags="songs"></li>
                                    <li class="ion-radio-waves" data-pack="default" data-tags="music, sound, speaker"></li>
                                    <li class="ion-speakerphone" data-pack="default"
                                        data-tags="sound, speaker, loud, amplify"></li>
                                    <li class="ion-mic-a" data-pack="default" data-tags="sound, talk, speaker"></li>
                                    <li class="ion-mic-b" data-pack="default" data-tags="sound, talk, speaker"></li>
                                    <li class="ion-mic-c" data-pack="default" data-tags="sound, talk, speaker"></li>
                                    <li class="ion-volume-high" data-pack="default" data-tags="sound, noise"></li>
                                    <li class="ion-volume-medium" data-pack="default" data-tags="sound"></li>
                                    <li class="ion-volume-low" data-pack="default" data-tags="sound"></li>
                                    <li class="ion-volume-mute" data-pack="default" data-tags="sound"></li>
                                    <li class="ion-levels" data-pack="default"
                                        data-tags="options, toggles, sound, mixer"></li>
                                    <li class="ion-play" data-pack="default" data-tags="music, watch, arrow, right"></li>
                                    <li class="ion-pause" data-pack="default" data-tags="music, break, hold, freeze"></li>
                                    <li class="ion-stop" data-pack="default" data-tags="music, square, hold, freeze"></li>
                                    <li class="ion-record" data-pack="default" data-tags="music, circle"></li>
                                    <li class="ion-skip-forward" data-pack="default" data-tags="music, next"></li>
                                    <li class="ion-skip-backward" data-pack="default" data-tags="music, previous"></li>
                                    <li class="ion-eject" data-pack="default" data-tags="music, dvd, remove"></li>
                                    <li class="ion-bag" data-pack="default"
                                        data-tags="shopping, price, cart, money, container, $"></li>
                                    <li class="ion-card" data-pack="default"
                                        data-tags="credit, price, debit, money, shopping, cash, dollars, $"></li>
                                    <li class="ion-cash" data-pack="default"
                                        data-tags="credit, price, debit, money, shopping, dollars, $"></li>
                                    <li class="ion-pricetag" data-pack="default"
                                        data-tags="credit, debit, money, shopping, cash, dollars, $"></li>
                                    <li class="ion-pricetags" data-pack="default"
                                        data-tags="credit, debit, money, shopping, cash, dollars, $"></li>
                                    <li class="ion-thumbsup" data-pack="default" data-tags="like, fun, yes"></li>
                                    <li class="ion-thumbsdown" data-pack="default" data-tags="dislike, boring, no"></li>
                                    <li class="ion-happy-outline" data-pack="default" data-tags="good, like, fun, yes"></li>
                                    <li class="ion-happy" data-pack="default" data-tags="good, like, fun, yes"></li>
                                    <li class="ion-sad-outline" data-pack="default" data-tags="cry, bad, no"></li>
                                    <li class="ion-sad" data-pack="default" data-tags="cry, bad, no"></li>
                                    <li class="ion-bowtie" data-pack="default" data-tags="tie, shirt, dress, clothing"></li>
                                    <li class="ion-tshirt-outline" data-pack="default"
                                        data-tags="tie, shirt, dress, clothing"></li>
                                    <li class="ion-tshirt" data-pack="default" data-tags="tie, shirt, dress, clothing"></li>
                                    <li class="ion-trophy" data-pack="default"
                                        data-tags="competition, compete, win, lose, award"></li>
                                    <li class="ion-podium" data-pack="default"
                                        data-tags="competition, compete, win, lose, award"></li>
                                    <li class="ion-ribbon-a" data-pack="default"
                                        data-tags="competition, compete, win, lose, award, trophy"></li>
                                    <li class="ion-ribbon-b" data-pack="default"
                                        data-tags="competition, compete, win, lose, award, trophy"></li>
                                    <li class="ion-university" data-pack="default"
                                        data-tags="graduate, education, school, tassle"></li>
                                    <li class="ion-magnet" data-pack="default" data-tags="sticky, attraction"></li>
                                    <li class="ion-beaker" data-pack="default" data-tags="mixture, potion, flask"></li>
                                    <li class="ion-erlenmeyer-flask" data-pack="default"
                                        data-tags="mixture, potion, beaker, potion"></li>
                                    <li class="ion-egg" data-pack="default" data-tags="birth, twitter, bird, baby"></li>
                                    <li class="ion-earth" data-pack="default" data-tags="nature, globe, home, planet"></li>
                                    <li class="ion-planet" data-pack="default"
                                        data-tags="nature, globe, home, planet, space"></li>
                                    <li class="ion-lightbulb" data-pack="default" data-tags="idea, new, aha!"></li>
                                    <li class="ion-cube" data-pack="default" data-tags="box, square, container"></li>
                                    <li class="ion-leaf" data-pack="default" data-tags="green, recycle, plant, nature"></li>
                                    <li class="ion-waterdrop" data-pack="default"
                                        data-tags="nature, clean, recycle, fresh, wet, rain"></li>
                                    <li class="ion-flame" data-pack="default" data-tags="fire, hot, heat"></li>
                                    <li class="ion-fireball" data-pack="default" data-tags="hot, heat"></li>
                                    <li class="ion-bonfire" data-pack="default" data-tags="hot, heat"></li>
                                    <li class="ion-umbrella" data-pack="default" data-tags="wet, rain, dry, shelter"></li>
                                    <li class="ion-nuclear" data-pack="default" data-tags="danger, warning, hazard"></li>
                                    <li class="ion-no-smoking" data-pack="default"
                                        data-tags="danger, warning, cigarette, cancer"></li>
                                    <li class="ion-thermometer" data-pack="default"
                                        data-tags="hot, cold, heat, temperature, mercury"></li>
                                    <li class="ion-speedometer" data-pack="default" data-tags="travel, accelerate"></li>
                                    <li class="ion-model-s" data-pack="default"
                                        data-tags="navigation, car, drive, transportation, tesla, sexy"></li>
                                    <li class="ion-plane" data-pack="default" data-tags="fly, jet"></li>
                                    <li class="ion-jet" data-pack="default" data-tags="fly, plane"></li>
                                    <li class="ion-load-a" data-pack="default" data-tags="spinner, waiting, refresh"></li>
                                    <li class="ion-load-b" data-pack="default" data-tags="spinner, waiting, refresh"></li>
                                    <li class="ion-load-c" data-pack="default" data-tags="spinner, waiting, refresh"></li>
                                    <li class="ion-load-d" data-pack="default" data-tags="spinner, waiting, refresh"></li>

                                    <li class="ion-social-twitter" data-pack="social" data-tags="follow, post, share"></li>
                                    <li class="ion-social-twitter-outline" data-pack="social"
                                        data-tags="follow, post, share"></li>
                                    <li class="ion-social-facebook" data-pack="social" data-tags="like, post, share"></li>
                                    <li class="ion-social-facebook-outline" data-pack="social"
                                        data-tags="like, post, share"></li>
                                    <li class="ion-social-googleplus" data-pack="social"
                                        data-tags="follow, post, share"></li>
                                    <li class="ion-social-googleplus-outline" data-pack="social"
                                        data-tags="follow, post, share"></li>
                                    <li class="ion-social-google" data-pack="social" data-tags="follow, post, share"></li>
                                    <li class="ion-social-google-outline" data-pack="social"
                                        data-tags="follow, post, share"></li>
                                    <li class="ion-social-dribbble" data-pack="social" data-tags="design"></li>
                                    <li class="ion-social-dribbble-outline" data-pack="social" data-tags="design"></li>
                                    <li class="ion-social-octocat" data-pack="social"
                                        data-tags="code, github, fork, merge, clone"></li>
                                    <li class="ion-social-github" data-pack="social"
                                        data-tags="code, fork, merge, clone"></li>
                                    <li class="ion-social-github-outline" data-pack="social"
                                        data-tags="code, fork, merge, clone"></li>
                                    <li class="ion-social-instagram" data-pack="social"
                                        data-tags="photo, camera, facebook"></li>
                                    <li class="ion-social-instagram-outline" data-pack="social"
                                        data-tags="photo, camera, facebook"></li>
                                    <li class="ion-social-whatsapp" data-pack="social"
                                        data-tags="text, sharing, private, facebook"></li>
                                    <li class="ion-social-whatsapp-outline" data-pack="social"
                                        data-tags="text, sharing, private, facebook"></li>
                                    <li class="ion-social-snapchat" data-pack="social" data-tags="photos, app"></li>
                                    <li class="ion-social-snapchat-outline" data-pack="social" data-tags="photos, app"></li>
                                    <li class="ion-social-foursquare" data-pack="social" data-tags="checkin"></li>
                                    <li class="ion-social-foursquare-outline" data-pack="social" data-tags="checkin"></li>
                                    <li class="ion-social-pinterest" data-pack="social" data-tags="social"></li>
                                    <li class="ion-social-pinterest-outline" data-pack="social" data-tags="social"></li>
                                    <li class="ion-social-rss" data-pack="social" data-tags="blogging"></li>
                                    <li class="ion-social-rss-outline" data-pack="social" data-tags="blogging"></li>
                                    <li class="ion-social-tumblr" data-pack="social" data-tags="blogging"></li>
                                    <li class="ion-social-tumblr-outline" data-pack="social" data-tags="blogging"></li>
                                    <li class="ion-social-wordpress" data-pack="social" data-tags="blogging"></li>
                                    <li class="ion-social-wordpress-outline" data-pack="social" data-tags="blogging"></li>
                                    <li class="ion-social-reddit" data-pack="social" data-tags="news, upvotes, karma"></li>
                                    <li class="ion-social-reddit-outline" data-pack="social"
                                        data-tags="news, upvotes, karma"></li>
                                    <li class="ion-social-hackernews" data-pack="social"
                                        data-tags="discuss, upvotes, karma"></li>
                                    <li class="ion-social-hackernews-outline" data-pack="social"
                                        data-tags="discuss, upvotes, karma"></li>
                                    <li class="ion-social-designernews" data-pack="social" data-tags="design, post"></li>
                                    <li class="ion-social-designernews-outline" data-pack="social"
                                        data-tags="design, post"></li>
                                    <li class="ion-social-yahoo" data-pack="social" data-tags=""></li>
                                    <li class="ion-social-yahoo-outline" data-pack="social" data-tags=""></li>
                                    <li class="ion-social-buffer" data-pack="social" data-tags="share"></li>
                                    <li class="ion-social-buffer-outline" data-pack="social" data-tags="share"></li>
                                    <li class="ion-social-skype" data-pack="social" data-tags="call"></li>
                                    <li class="ion-social-skype-outline" data-pack="social" data-tags="call"></li>
                                    <li class="ion-social-linkedin" data-pack="social" data-tags="connect"></li>
                                    <li class="ion-social-linkedin-outline" data-pack="social" data-tags="connect"></li>
                                    <li class="ion-social-vimeo" data-pack="social"
                                        data-tags="video, watch, share, view"></li>
                                    <li class="ion-social-vimeo-outline" data-pack="social"
                                        data-tags="video, watch, share, view"></li>
                                    <li class="ion-social-twitch" data-pack="social"
                                        data-tags="gaming, games, live, streaming, video, watch, share, view"></li>
                                    <li class="ion-social-twitch-outline" data-pack="social"
                                        data-tags="gaming, games, live, streaming, video, watch, share, view"></li>
                                    <li class="ion-social-youtube" data-pack="social"
                                        data-tags="video, watch, share, view"></li>
                                    <li class="ion-social-youtube-outline" data-pack="social"
                                        data-tags="video, watch, share, view"></li>
                                    <li class="ion-social-dropbox" data-pack="social" data-tags="upload"></li>
                                    <li class="ion-social-dropbox-outline" data-pack="social" data-tags="upload"></li>
                                    <li class="ion-social-apple" data-pack="social" data-tags="mac, mobile"></li>
                                    <li class="ion-social-apple-outline" data-pack="social" data-tags="mac, mobile"></li>
                                    <li class="ion-social-android" data-pack="social" data-tags="mobile"></li>
                                    <li class="ion-social-android-outline" data-pack="social" data-tags="mobile"></li>
                                    <li class="ion-social-windows" data-pack="social" data-tags="pc"></li>
                                    <li class="ion-social-windows-outline" data-pack="social" data-tags="pc"></li>
                                    <li class="ion-social-html5" data-pack="social"
                                        data-tags="code, html, css, js, developer"></li>
                                    <li class="ion-social-html5-outline" data-pack="social"
                                        data-tags="code, html, css, js, developer"></li>
                                    <li class="ion-social-css3" data-pack="social"
                                        data-tags="code, html, css, js, developer"></li>
                                    <li class="ion-social-css3-outline" data-pack="social"
                                        data-tags="code, html, css, js, developer"></li>
                                    <li class="ion-social-javascript" data-pack="social"
                                        data-tags="code, html, css, js, developer"></li>
                                    <li class="ion-social-javascript-outline" data-pack="social"
                                        data-tags="code, html, css, js, developer"></li>
                                    <li class="ion-social-angular" data-pack="social"
                                        data-tags="code, mobile, js, angularjs, ionic"></li>
                                    <li class="ion-social-angular-outline" data-pack="social"
                                        data-tags="code, mobile, js, angularjs, ionic"></li>
                                    <li class="ion-social-nodejs" data-pack="social"
                                        data-tags="code, js, javascript, developer"></li>
                                    <li class="ion-social-sass" data-pack="social" data-tags="code, css"></li>
                                    <li class="ion-social-python" data-pack="social" data-tags="code"></li>
                                    <li class="ion-social-chrome" data-pack="social"
                                        data-tags="code, mobile, js, angularjs, ionic"></li>
                                    <li class="ion-social-chrome-outline" data-pack="social"
                                        data-tags="code, mobile, js, angularjs, ionic"></li>
                                    <li class="ion-social-codepen" data-pack="social"
                                        data-tags="testing, js, developer"></li>
                                    <li class="ion-social-codepen-outline" data-pack="social"
                                        data-tags="testing, js, developer"></li>
                                    <li class="ion-social-markdown" data-pack="social"
                                        data-tags="code, testing, text, developer"></li>
                                    <li class="ion-social-tux" data-pack="social" data-tags="code, linux, opensource"></li>
                                    <li class="ion-social-freebsd-devil" data-pack="social"
                                        data-tags="code, opensource, unix"></li>
                                    <li class="ion-social-usd" data-pack="social"
                                        data-tags="currency, trade, money, cash"></li>
                                    <li class="ion-social-usd-outline" data-pack="social"
                                        data-tags="currency, trade, money, cash"></li>
                                    <li class="ion-social-bitcoin" data-pack="social"
                                        data-tags="currency, trade, money"></li>
                                    <li class="ion-social-bitcoin-outline" data-pack="social"
                                        data-tags="currency, trade, money"></li>
                                    <li class="ion-social-yen" data-pack="social"
                                        data-tags="currency, trade, money, japanese"></li>
                                    <li class="ion-social-yen-outline" data-pack="social"
                                        data-tags="currency, trade, money, japanese"></li>
                                    <li class="ion-social-euro" data-pack="social"
                                        data-tags="currency, trade, money, europe"></li>
                                    <li class="ion-social-euro-outline" data-pack="social"
                                        data-tags="currency, trade, money, europe"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<script type="javascript">

    window.onload = function (ev) {
        window.Pace.stop();
    }

    var $PagingSize = 20;

</script>
<bms:contentJS />


<bms:contentFooter />