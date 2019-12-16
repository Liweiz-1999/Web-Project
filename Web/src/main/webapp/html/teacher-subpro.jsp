<%--
  Created by IntelliJ IDEA.
  User: 李维壮
  Date: 2019/12/13
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入）
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="../resources/css/common.css">
    <link rel="stylesheet" href="../resources/css/teachers.css">
    <title>东北林业大学软件工程专业</title>
    <style>
        .navbar-default{
            background: #21a675 !important;
        }
        header{
            background: #21a675 !important;
        }
        footer{
            background: #21a675 !important;
        }
        .login button{
            background: #21a675 !important;
        }
        .m-cur .tit{
            background: #21a675 !important;
        }
    </style>
</head>
<body>
<div class="content">
    <header class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <img src="../resources/images/header-logo.png" alt="">
            </div>
            <div class="col-md-4">
                <div class="input-group search">
                    <input type="text" class="form-control" placeholder="请输入您想了解的信息">
                    <span class="input-group-btn">
                        <button class="btn btn-default">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="login">
                    <button class="btn btn-default" data-toggle="modal" data-target="#login_content">
                        <span class="glyphicon glyphicon-user"></span>
                        登录
                    </button>
                </div>
            </div>
            <!--modal-->
            <div id="login_content" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button class="close" data-dismiss="modal">
                                <span>&times</span>
                            </button>
                            <h4 class="modal-title">登录</h4>
                        </div>
                        <div class="modal-body">
                            <form action="/LoginServlet" method="POST" class="form-group">
                                <div class="form-group">
                                    <label for="">用户名</label>
                                    <input class="form-control" type="text" name="username">
                                </div>
                                <div class="form-group">
                                    <label for="">密码</label>
                                    <input class="form-control" type="password" name="password">
                                </div>
                                <!-- <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                        <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2">
                                </div> -->
                                <br>
                                <div class="text-right">
                                    <button class="btn btn-primary" type="submit">登录</button>
                                    <button class="btn btn-danger" data-dismiss="modal">取消</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!---->
        </div>
    </header>
    <!-- 导航条 -->
    <div class="main">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" style="padding:0 25px;">
                    <ul class="nav navbar-nav">
                        <li><a href="/IndexServlet">首页</a></li>
                        <li><a href="introduction.jsp">专业介绍</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >
                                师资队伍 <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="teacher-pro.jsp">教授</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="teacher-subpro.jsp">副教授</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="teacher-tutor.jsp">讲师</a></li>
                            </ul>
                        </li>
                        <li class="dropdown active">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >
                                实验室 <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="lab-925.jsp">925移动开发实验室</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="lab-923.jsp">923互联网实验室</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="lab-901.jsp">901教学实验室</a></li>
                            </ul>
                        </li>
                        <li><a href="jobguide.jsp">就业指南</a></li>
                        <li><a href="course.jsp">课程设置</a></li>
                        <li><a href="research.jsp">科学研究</a></li>
                        <li><a href="/NewsListServlet">新闻公告</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!---->
        <!-- 二维码 -->
        <div class="grid_2">
            <div class="container">
                <div class="list">
                    <div class="left">
                        <h3 class="left-title">
                            师资力量
                        </h3>
                        <ul>
                            <li onclick="location.href='teacher-tutor.jsp'">讲师</li>
                            <li class="leftOn" onclick="location.href='teacher-subpro.jsp'">副教授</li>
                            <li onclick="location.href='teacher-pro.jsp'">教授</li>
                        </ul>
                    </div>
                    <div class="right">
                        <div class="right-box">
                            <div class="right-title">
                                <h3>师资力量&nbsp; / &nbsp;副教授</h3>
                            </div>
                            <div class="list-box">
                                <div class="teacher-content">
                                    <ul>
                                        <li>
                                            <div class="teacher-left">
                                                <img src="../resources/images/sm-luo.png" alt="" class="teacher-img">
                                                <p class="teacher-name">罗嗣卿</p>
                                            </div>
                                            <div class="teacher-box">
                                                <dl>
                                                    <dt>电话:</dt>
                                                    <dd>+86-755-26032851</dd>
                                                </dl>
                                                <dl><dt>传真:</dt><dd>+86-755-26032461</dd></dl>
                                                <dl><dt>Email:</dt><dd>wangxl@insun.hit.edu.cn</dd></dl>
                                                <dl><dt>研究方向:</dt><dd>网络信息处理、人工智能、自然语言处理、生物信息学、声图文智能计算、商业智能等</dd></dl>
                                                <dl><dt>教学课目:</dt><dd>Web程序设计、系统程序设计、Java。</dd></dl>
                                                <a href="teacherinfo-luosiqing.jsp" class="teacher-link">查看简历</a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="teacher-left">
                                                <img src="../resources/images/sm-lily.jpg" alt="" class="teacher-img">
                                                <p class="teacher-name">李莉</p>
                                            </div>
                                            <div class="teacher-box">
                                                <dl>
                                                    <dt>电话:</dt>
                                                    <dd>+86-755-26032851</dd>
                                                </dl>
                                                <dl><dt>传真:</dt><dd>+86-755-26032461</dd></dl>
                                                <dl><dt>Email:</dt><dd>wangxl@insun.hit.edu.cn</dd></dl>
                                                <dl><dt>研究方向:</dt><dd>网络信息处理、人工智能、自然语言处理、生物信息学、声图文智能计算、商业智能等</dd></dl>
                                                <dl><dt>教学课目:</dt><dd>Web程序设计、系统程序设计、Java。</dd></dl>
                                                <a href="teacherinfo-lili.jsp" class="teacher-link">查看简历</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!--main-->
</div> <!--content-->
<footer class="container-fluid">
    <div class="col-md-1 logo">
        <br><br>
        <img src="../resources/images/footer-logo.png" alt="">
    </div>
    <div class="col-md-8 left">
        <p>
            地址：黑龙江省哈尔滨市香坊区和兴路26号    邮编： 150040     电话：0451-82190397
            <br>
            Copyright © 2018 版权所有：东北林业大学软件工程专业
            <br>技术支持：HC</p>
    </div>
    <div class="col-md-3 right">
        <div class="links">

        </div>
    </div>
</footer>

<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
    $("#weixin").popover({
        trigger: 'hover',
        html: true,
        content: "<img src='../resources/images/weixin.png'>"
    });
</script>
</body>
</html>