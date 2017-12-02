<%--
  User: Administrator
  Date: 2017/12/2
  Time: 11:14
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Form Component | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- date picker -->

    <!-- color picker -->

    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <script src="js/lte-ie7.js"></script>
    <![endif]-->

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<!-- container section start -->
<section id="container" class="">


    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-file-text-o"></i> 修改密码</h3>

                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">

                        </header>
                        <div class="panel-body">
                            <form class="form-horizontal " method="get">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">旧密码</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">新密码</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="newpassword">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-2 control-label">确认密码</label>
                                    <div class="col-sm-10">
                                        <input class="form-control"  type="text"  name="renewpassword">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <input class="form-control" type="submit" name="submit" value="提交" />
                                </div>
                            </form>
                        </div>
                    </section>



                </div>
            </div>
        </section>
    </section>
</section>
            <!-- container section end -->
            <!-- javascripts -->
            <script src="js/jquery.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <!-- nice scroll -->
            <script src="js/jquery.scrollTo.min.js"></script>
            <script src="js/jquery.nicescroll.js" type="text/javascript"></script>

            <!-- jquery ui -->
            <script src="js/jquery-ui-1.9.2.custom.min.js"></script>

            <!--custom checkbox & radio-->
            <script type="text/javascript" src="js/ga.js"></script>
            <!--custom switch-->
            <script src="js/bootstrap-switch.js"></script>
            <!--custom tagsinput-->
            <script src="js/jquery.tagsinput.js"></script>

            <!-- colorpicker -->

            <!-- bootstrap-wysiwyg -->
            <script src="js/jquery.hotkeys.js"></script>
            <script src="js/bootstrap-wysiwyg.js"></script>
            <script src="js/bootstrap-wysiwyg-custom.js"></script>
            <!-- ck editor -->
            <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
            <!-- custom form component script for this page-->
            <script src="js/form-component.js"></script>
            <!-- custome script for all page -->
            <script src="js/scripts.js"></script>


</body>
</html>

