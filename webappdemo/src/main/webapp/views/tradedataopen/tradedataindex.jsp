<%@ page import="com.alibaba.appengine.jae.api.officialservice.OfficialServiceFactory" %>
<%@ page import="com.alibaba.appengine.jae.api.officialservice.OfficialService" %>
<%--
  Created by IntelliJ IDEA.
  User: miaoxi.zj
  Date: 14-3-3
  Time: 下午3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JAEdemo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/assets/custom/reset.css">
    <link rel="stylesheet" href="/assets/custom/trade.css">

    <script src="http://code.jquery.com/jquery-1.11.0.js"></script>
</head>
<body>

<%
    String[] urls = new String[6];
    Object[] args;
    OfficialService officialService;
    String[] itemIds = new String[]{"1500016303831","1500011388131","1500012546582","1607009789","1607018099","1607018323"};
    for(int i=0;i<itemIds.length;i++){
        args = new Object[]{itemIds[i],684894,2062118596};
        officialService = OfficialServiceFactory.getOfficialService();
        urls[i]=(String)officialService.invoke("JaeClickUrlService", "getItemClickUrl",args);
    }

%>
<div class="container">
    <div class="head">
        交易数据开放测试
        <div class="loginstatus">获取是否登录</div>
    </div>
    <div class="mainbody">
        <div class="taobaolist">
            <%--miaxi01中的宝贝--%>
            <h4>淘宝宝贝list</h4>
            <div class="baby">
                <a href="<%=urls[0]%>" target="_blank">
                    <img src="/assets/imgs/tbbaby1.JPG">
                    <br>
                    淘宝出售中的宝贝1
                </a>

            </div>
            <div class="baby">
                <a href="<%=urls[1]%>" target="_blank">
                    <img src="/assets/imgs/tbbaby2.JPG">
                    <br>
                    淘宝出售中的宝贝2
                </a>

            </div>
            <div class="baby">
                <a href="<%=urls[2]%>">
                    <img src="/assets/imgs/tbbaby3.JPG">
                    <br>
                    淘宝出售中的宝贝3
                </a>

            </div>
        </div>
         <div class="tmalllist">
             <%--xuantest1中的宝贝--%>
            <h4>天猫宝贝list</h4>
            <div class="baby">
                <a href="<%=urls[3]%>" target="_blank">
                    <img src="/assets/imgs/tmbaby1.JPG"><br>
                    天猫出售中的宝贝1
                </a>

            </div>
            <div class="baby">
                <a href="<%=urls[4]%>" target="_blank">
                    <img src="/assets/imgs/tmbaby2.JPG"><br>
                    天猫出售中的宝贝2
                </a>

            </div>
            <div class="baby">
                <a href="<%=urls[5]%>" target="_blank">
                    <img src="/assets/imgs/tmbaby3.JPG"><br>
                    天猫出售中的宝贝3
                </a>
            </div>
        </div>
        <div class="testcookie">
            <h5>获取的cookie如下</h5>
            <div>
                <%
                    Cookie[] cookies = request.getCookies();
                    //遍历cookie数组
                    if(cookies==null){
                        System.out.println("没有cookie信息");
                    }else{
                        for(int i=0;i<cookies.length;i++){
                            Cookie cookie = cookies[i];
                            //获得cookie的名称和值
                            String name=cookie.getName();
                            String value = cookie.getValue();
                            System.out.println("cookie名："+name+" &nbsp; cookie值："+value+"</br>");

                        }
                    }
                %>
            </div>
    </div>

</div>

</div>
</body>
</html>