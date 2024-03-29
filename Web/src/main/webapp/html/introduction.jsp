<%--
  Created by IntelliJ IDEA.
  User: 李维壮
  Date: 2019/12/13
  Time: 0:41
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
    <link rel="stylesheet" href="../resources/css/intro.css">
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
                        <li><a href="/IndexServlet">首页</a></li>
                        <li class="active"><a href="introduction.jsp">专业介绍</a></li>
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
                        <li class="dropdown">
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
        <!--专业简介-->
        <div class="intro container-fluid">
            <div class="tab-content">
                <div class="tab-pane active" id="intro1">
                    <h4 style="text-align: center">软件工程专业</h4>
                    <span class="label label-warning">专业简介</span>
                    <p>本专业面向软件系统分析、设计、开发、运维、测试与管理等产业的需求，培养具有良好综合素质和职业道德，扎实的软件工程基础理论、工程能力，具有创新、创业意识，竞争和团队精神，能适应软件工程新技术发展和社会需要的应用型软件工程师。毕业后可就职于大中型企事业单位、科研机构从事软件工程的设计、研究、开发、管理和维护等岗位。</p>
                    <span class="label label-success">培养目标</span>
                    <p>1.人文与职业素质：具有较强的爱国主义意识和社会主义价值观、良好的人文社会科学素养、社会伦理责任感，掌握所在专业领域的标准和规章制度，能够在软件工程实践中遵守职业道德和行业规范，具备良好的质量、安全、服务意识。</p>
                    <p>2.工程素质：掌握软件工程领域中软件需求分析、设计、开发、维护及项目管理的方法和技术，能够用工程化的思想和方法分析和解决软件工程实际问题。</p>
                    <p>3.计算思维能力：具备形式化、模型化描述和抽象思维与逻辑思维能力，对复杂的系统能进行分析和设计。</p>
                    <p>4.协作与交流能力：具备较强的表达能力，能理解他人所表述的内容，并能发表自己的见解或提出建设性意见。</p>
                    <p>5.组织、协调与项目管理能力：具有一定的组织管理能力、独立工作能力、团队协作能力和人际交往能力。</p>
                    <p>6.工程系统应用能力：掌握所在工程领域的工程实践知识，能够综合考虑经济、环境、法律、安全、健康、伦理等制约因素分析与解决复杂的工程问题，承担软件设计、测试、维护等相关的工作。</p>
                    <p>7.可持续自我学习和创新能力：关注行业前沿发展现状和趋势，对新知识、新技术有较敏锐的洞察能力，具备继续学习、创新和适应发展的能力。</p>
                    <span class="label label-info">培养模式</span>
                    <p>在人才培养上实施灵活的“211”模式，着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养；建立了具有业界开放标准，能进行Android、IOS等软件开发的实验室；先后同沈阳东软、亿阳信通股份有限公司等企业建立校企合作，为学生提供基于工程领域应用的实习、实训基地。同时，以大学生创新实践活动、科技大赛为补充，突出工程化、系统能力的培养。</p>
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