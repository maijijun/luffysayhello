<%--
  Created by IntelliJ IDEA.
  User: maijijun
  Date: 2019/7/26
  Time: 1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--去除多余换行和空格--%>
<%@ page trimDirectiveWhitespaces="true" %>
<html>
<head>
    <title>Luffy Say Hello</title>
<%--    AJAX--%>
<%--    <script>--%>
<%--        var xmlhttp--%>
<%--        function loadXMLDoc() {--%>
<%--            if(window.XMLHttpRequest){--%>
<%--                xmlhttp = new XMLHttpRequest();--%>
<%--            }else{--%>
<%--                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");--%>
<%--            }--%>
<%--            xmlhttp.onreadystatechange = function () {--%>
<%--                if(xmlhttp.readyState == 4 && xmlhttp.status == 200){--%>
<%--                    document.getElementById("mydiv").innerHTML = xmlhttp.responseText;--%>
<%--                }--%>
<%--            }--%>
<%--            xmlhttp.open("get","/luffysayhello",true)--%>
<%--            xmlhttp.send(null);--%>
<%--        }--%>
<%--    </script>--%>
    <style>
        body.bg{
            height: 100%;
            width: 100%;
            background-image: url("/Img/bg.jpg");
            background-repeat: no-repeat;
            background-size: 100%,100%;
            opacity: 1;
        }
        img{
            opacity: 1;
            height: 450px;
            width: 720px;
        }

        div#talkbox{
            height: 40px;
            width: 300px;
            border-radius: 10px;
            background-color:#F7FCFA;
            border:solid 1px;
            word-break: break-all;
            word-wrap: break-word;
            position: absolute;
            right: 200px;
            top: 200px;
            padding-top: 15px;
            padding-left: 40px;
            margin-top: 20px;
            margin-left: 20px;
        }
    </style>
</head>
<body class="bg" >
       <div id="mydiv">
            <img src="/Img/luffy.png" alt="Luffy">
       </div>

        <div  id="talkbox"></div>

       <p  style="display: none;" id="word"><%=(String)request.getAttribute("message")%></p>
       <script>
           var index = 0;
           var word = document.getElementById("word").innerHTML;
           var timer = null;
           function type() {
               if(index == word.length){
                   clearInterval(timer);
               }
               document.getElementById("talkbox").innerText = word.substring(0,index++);
               console.log(index);
           }
           timer = setInterval(type,150)
       </script>
</body>
</html>
