<%--
  Created by IntelliJ IDEA.
  User: 李维壮
  Date: 2019/12/13
  Time: 0:43
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
    <link rel="stylesheet" href="../resources/css/lab.css">
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
                            实验室
                        </h3>
                        <ul>
                            <li onclick="location.href='lab-925.jsp'">925移动开发实验室</li>
                            <li class="leftOn" onclick="location.href='lab-923.jsp'">923互联网实验室</li>
                            <li onclick="location.href='lab-901.jsp'">901教学实验室</li>
                        </ul>
                    </div>
                    <div class="right">
                        <div class="right-box">
                            <div class="right-title">
                                <h3>实验室&nbsp; / &nbsp;923互联网实验室</h3>
                            </div>
                            <div class="list-box">
                                <div class="teacher-content">
                                    <p class="lab-img"><img src="../resources/images/923.png" alt=""></p>
                                    <span class="label label-warning">简介</span>
                                    <p>东北林业大学软件专业先进计算机应用技术教育部工程研究中心（以下简称工程中心）成立于2006年6月，前身是东北林业大学软件专业计算机应用教研室，工程中心主任为博士生导师熊璋教授。</p>
                                    <p>工程中心建设的主要目标是结合东北林业大学软件专业计算机学院的科学技术成果，开展工程化研究，形成自主知识产权的工程技术成果；针对国家经济和国防建设以及市场发展需 求，开展集成创新研究，实现具有自主知识产权关键技术的产品化。工程中心在工程化研究和集成创新研究过程中提出的新的科学技术问题，由计算机学院开展基础性研究，实现核心关键技术突破，形成计算机学院与工程中心协作互动、协调发展的格局，促进国家科技成果产业化的转化，具体包括技术成果转化、标准规范研制、信息化业务咨询、国际交流合作、人才培养以及机制创新等几个方面的目标。</p>
                                    <span class="label label-info">技术成果转化</span>
                                    <p>技术成果转化：工程中心主要依托东北林业大学软件专业计算机科学与技术学科所取得的具有重要市场价值的科技成果，同时引进、消化和吸收国外先进技术，开展工程化研究和集成创新工作，适时向市场提供适合规模生产的工程化共性、关键技术，或具有市场竞争力的技术产品、行业解决方案。 标准规范研制：开展相关技术与业务标准（规范）的研究与制订工作，并积极开展与国际标准化组织的合作  信息化业务咨询：为相关领域、行业的发展或大型计算机应用或信息化工程提供咨询、设计、论证等专业技术服务。 国际交流合作：在技术、产品、标准、应用和工程管理等方面广泛开展与国内外著名企业和研究机构的交流与合作。 人才培养：利用学科优势，结合研究生培养机制，全面系统地培养高质量科技创新人才和管理人才。</p>
                                    <span class="label label-warning">机制创新</span>
                                    <p>机制创新：积极开展高等院校科技成果工程化、产业化转化机制的创新研究与示范。 近年来主持了国家自然科学基金、国家十一五科技支撑计划、航空基金、航天基金和某863项目，同时，成功实施了包括人民大会堂、人大常委会、全国政协、党 的十七大、香港澳门立法会等大型多媒体会议系统；多个国内大型国际机场的弱电系统、南水北调工程的相关信息化管理系统等大型工程项目。目前，已经发表学术论文100多篇，申请国家发明专利近百项，获得多项省部级奖励。 本中心现有教授博导1名，副教授3名，讲师2名，行政管理人员1名，项目聘用人员3名，硕博士研究生50余人。先进计算机应用技术教育部工程研究中心目前的研究方向包括：大规模应用工程化、多媒体信息隐藏、无线传感器网络和自组织网络、多媒体内容理解等。</p>
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
