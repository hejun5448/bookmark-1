<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="cn.ysu.lius.factory.*,cn.ysu.lius.vo.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>
<html>
<head><title>my��ǩ</title></head>
<%request.setCharacterEncoding("GBK");// �������%>
<body>
<h1>welcome</h1>
<%
	User user=new User();
	user.setUserno(1);
	user.setUsername(request.getParameter("username"));
	user.setUserpsd(request.getParameter("userpsd"));
	user.setAddate(Calendar.getInstance().getTime() );    //get current systime
	try{
		if(DAOFactory.getIUserDAOInstance().doCheck(user)){
		//if(DAOFactory.getIUserDAOInstance().doDelete(Integer.parseInt(request.getParameter("deluserno")))){
	%> 
		<h3>��ǩ��ӳɹ�</h3>
		<jsp:forward page="user_bkm.jsp">
			<jsp:param name="uname" value="lius"/>
		</jsp:forward>
	<%
		}else{
	%>
		<h3>��ǩ���ʧ��</h3>
		<jsp:forward page="user_loginfailed.htm">
			<jsp:param name="uname" value="lius"/>
		</jsp:forward>
	<%
		}
	}catch (Exception e){
		e.printStackTrace();
	%>	
		<h3>�����쳣</h3>
		<%=e%>
	<%
	}
%>
</body>
</html>