<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<script type="text/javascript">
/**
 *获取当前时间

*/

function getCurrentDate() {
  var now = new Date();
  var year = now.getFullYear(); //得到年份
  var month = now.getMonth();//得到月份
  var date = now.getDate();//得到日期
  var day = now.getDay();//得到周几
  var hour = now.getHours();//得到小时
  var minu = now.getMinutes();//得到分钟
  var sec = now.getSeconds();//得到秒
  month = month + 1;
  if (month < 10) month = "0" + month;
  if (date < 10) date = "0" + date;
  if (hour < 10) hour = "0" + hour;
  if (minu < 10) minu = "0" + minu;
  if (sec < 10) sec = "0" + sec;
  var time = "";
  //精确到天
    time = year + "-" + month + "-" + date+ " " + hour + ":" + minu + ":" + sec;
   // return(time);
 document.getElementById("Ttime").innerHTML=time;
 setTimeout(() => {getCurrentDate()
	
}, 1000);
  
}

</script>
<body onload=getCurrentDate() >
<DIV id=ad_footerbanner1></DIV>
<DIV id=ad_footerbanner2></DIV>
<DIV id=ad_footerbanner3></DIV>
<DIV id=footer>
<DIV class=wrap>
<DIV id=footlinks>
当前时区 GMT+8, 现在时间是：<span id="Ttime"></span>
<P>
<P></P></DIV><IMG border=0 
src="<%=path %>/images/jsprun_icon.gif"></A> 

<P id=copyright>Powered by <STRONG>动漫论坛</STRONG> <EM>1.0.0</EM> © 2019-2020 动漫论坛 Inc. </P>
<P id=debuginfo>Processed in 0.020000 second(s).</P></DIV></DIV>
</body>
