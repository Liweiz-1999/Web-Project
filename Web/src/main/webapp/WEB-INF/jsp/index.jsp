<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<c:url value="/" var="b" />
	<base href="${b }">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->
    <link rel="stylesheet" href="../../resources/css/animate.css">
    <link rel="stylesheet" href="../../resources/css/index.css">
    <link rel="stylesheet" href="../../resources/css/common.css">
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
                <img src="../../resources/images/header-logo.png" alt="">
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
                            <form action="/LoginServlet" class="form-group" method="POST">
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
                  <li class="active"><a href="/IndexServlet">首页</a></li>
                  <li><a href="../../html/introduction.jsp">专业介绍</a></li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >
                        师资队伍 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                      <li><a href="../../html/teacher-pro.jsp">教授</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="../../html/teacher-subpro.jsp">副教授</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="../../html/teacher-tutor.jsp">讲师</a></li>
                    </ul>
                  </li>
                  <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >
                            实验室 <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                          <li><a href="../../html/lab-925.jsp">925移动开发实验室</a></li>
                          <li role="separator" class="divider"></li>
                          <li><a href="../../html/lab-923.jsp">923互联网实验室</a></li>
                          <li role="separator" class="divider"></li>
                          <li><a href="../../html/lab-901.jsp">901教学实验室</a></li>
                        </ul>
                    </li>
                    <li><a href="../../html/jobguide.jsp">就业指南</a></li>
                    <li><a href="../../html/course.jsp">课程设置</a></li>
                    <li><a href="../../html/research.jsp">科学研究</a></li>
                    <li><a href="/NewsListServlet">新闻公告</a></li>
                </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
          </nav>
<!--轮播图(放在container外面，不然会留白)-->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
      
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
          <div style='background-image: url(../../resources/images/nefu4.jpg);' class="item active banner">
            <div class="carousel-caption">
                <h3>主楼风采</h3>
                <p>东北林业大学</p>
            </div>
          </div>
          <div style="background-image: url(../../resources/images/nefu5.jpg)" class="item banner">
            <div class="carousel-caption">
              <h3>美丽雪景</h3>
              <p>东北林业大学</p>
            </div>
          </div>
          <div style="background-image: url(../../resources/images/nefu6.jpg)" class="item banner">
            <div class="carousel-caption">
              <h3>雪中阳光</h3>
              <p>东北林业大学</p>
            </div>
          </div>
        </div>
    </div>
<!-- 精彩推荐 -->
    <div class="news-events">
        <div class="container-fluid">
            <div class="col-md-6 news-section">
                <div class="news-hd">
                    <div class="row">
                        <div class="col-md-10">
                            <h2><strong><a >精彩推荐</a></strong>
                                <span style="transform: translate(0px, 1.84px); opacity: 0.408;">/ <a >Events</a></span>
                            </h2>
                        </div>
                        <div class="col-md-2 more">
                            <a >更多+</a>
                        </div>
                    </div>
                </div>
                <div class="news-bd">
                    <div class="news-list">
                        <ul>
                        <li class="news-item">
                        <div class="media">
                            <div class="media-body">
                                <h4 class="media-heading">不忘初心、牢记使命——计算思维进宿舍</h4>
                                <h6>2019.11.06</h6>
                                <p>为深入开展“不忘初心，牢记使命”主题教育活动，落实“围绕学生、关照学生、服务学生”的要求，11月6日中午计算机基础教育部党支部进行举办了“计算思维进宿舍”党日主题活动。支部全体党员教师参加。</p>
                            </div>
                        </div>
                        </li>
                        <li class="news-item">
                            <div class="media">
                                <div class="media-body">
                                    <h4 class="media-heading">李顺龙副校长深入联系班级讲党课</h4>
                                    <h6>2019.11.25</h6>
                                    <p>11月22日下午，东北林业大学副校长李顺龙为信息学院2017级软件工程4班的全体同学讲授了一堂题为《学习新思想，争做新青年》的主题党课，并与同学们深入交流。</p>
                                </div>
                            </div>
                        </li>
                        <li class="news-item">
                            <div class="media">
                                <div class="media-body">
                                    <h4 class="media-heading">信息学院研究生党支部举办主题党课</h4>
                                    <h6>2019.11.07</h6>
                                    <p>为深入开展“不忘初心、牢记使命”主题教育活动，11月6日下午，信息学院研究生党支部在成栋楼407举办了主题为《学习十九届四中全会公报》的主题党课。本次党课由支部书记李婧坤同志主讲。</p>
                                </div>
                            </div>
                        </li>
                        </ul>
                    </div>
                </div>
            </div>
<!-- 公告 -->
            <div class="col-md-6 events-section">
                <div class="news-hd">
                    <div class="row">
                        <div class="col-md-10">
                            <h2><strong><a href="/NewsListServlet">新闻公告</a></strong>
                                <span style="transform: translate(0px, 1.84px); opacity: 0.408;">/ <a href="/NewsListServlet">News</a></span>
                            </h2>
                        </div>
                        <div class="col-md-2 more">
                                <a href="/NewsListServlet">更多+</a>
                        </div>
                    </div>
                </div>
                <div class="events-bd">
                    <div class="events-list">
                        <ul>
                            <!-- <li><a href="#">
                                <p><span class="glyphicon glyphicon-triangle-bottom"></span> 中共中央印发《中国共产党支部工作条例（试行）》</p>
                                <span>2018.12.04</span>
                            </a></li> -->
                            <c:forEach items="${newsList }" var="n">
                            	<li><a href="/NewsDetailServlet?id=${n.id}" target="_blank" title="${n.title }">
                            	<p><span class="glyphicon glyphicon-minus"></span>${n.title }</p>
                            	<span><fmt:formatDate pattern="yyyy-MM-dd" value="${n.insertTime}" /></span>
                            	</a></li>
                            </c:forEach>
                            
                        </ul>
                    </div>
                </div>
            <!--招生信息-->
                <div class="news-hd">
                    <div class="row">
                        <div class="col-md-10">
                            <h2><strong><a href="#">招生信息</a></strong>
                                <span style="transform: translate(0px, 1.84px); opacity: 0.408;">/ <a href="#">News</a></span>
                            </h2>
                        </div>
                        <div class="col-md-2 more">
                                <a href="#">更多+</a>
                        </div>
                    </div>
                </div>
                <div class="events-bd">
                    <div class="events-list">
                        <ul>
                            <li><a href="#">
                                <p><span class="glyphicon glyphicon-triangle-bottom"></span>东北林业大学2019年新生入学指南</p>
                                <span>2018.12.04</span>
                            </a></li>
                            <li><a href="#">
                                    <p><span class="glyphicon glyphicon-minus"></span>东北林业大学2019年新生入学指南</p>
                                    <span>2018.12.04</span>
                            </a></li>
                            <li><a href="#">
                                    <p><span class="glyphicon glyphicon-minus"></span>东北林业大学2019年新生入学指南</p>
                                    <span>2018.12.04</span>
                            </a></li>
                            <li><a href="#">
                                    <p><span class="glyphicon glyphicon-minus"></span>东北林业大学2019年新生入学指南</p>
                                    <span>2018.12.04</span>
                            </a></li>
                            <li><a href="#">
                                    <p><span class="glyphicon glyphicon-minus"></span>东北林业大学2019年新生入学指南</p>
                                    <span>2018.12.04</span>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div> <!--events section-->
<!--其他栏目-->

        </div>
    </div>
    <div class="grid-3">
        <div class="container">
            <h3 class="title-eng">DISPLAY</h3>
            <h3 class="title">
                <span class="line"></span>
                <span class="title-text">学子风采</span>
                <span class="line"></span>
            </h3>
            <div class="img-list">
                <div class="col-md-3">
                    <img src="../../resources/images/shanying.jpg" alt="">
                </div>
                <div class="col-md-3">
                    <img src="../../resources/images/wudi.jpg" alt="">
                </div>
                <div class="col-md-3">
                    <img src="../../resources/images/bianjilong.jpg" alt="">
                </div>
                <div class="col-md-3">
                    <img src="../../resources/images/liyan.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div> <!--main-->
</div> <!--content-->
    <footer class="container-fluid">
        <div class="col-md-1 logo">
            <br><br>
            <img src="../../resources/images/footer-logo.png" alt="">
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
                <!-- <span class="link-title">友情链接</span>
                <div class="select-box">
                    <span>&nbsp;东北林业大学</span>
                    <br>
                    <span>哈尔滨工业大学</span>
                    <br>
                    <span>哈尔滨工程大学</span>
                </div> -->
            </div>
        </div>
    </footer>

    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script>
        $(".dropdown").mouseover(function () {
            $(".dropdown-menu").addClass("animated fadeIn");
            /* 动画的使用，先引入animate.css*/
        });
        $(".dropdown").mouseleave(function(){
            $(".dropdown-menu").removeClass("animated fadeIn");
        })
    </script>
</body>
</html>