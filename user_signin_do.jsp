<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="cn.ysu.lius.factory.*,cn.ysu.lius.vo.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*"%>  <!--- ʹ��ϵͳʱ��--->
<html>
<head><title>my��ǩ</title></head>
<%request.setCharacterEncoding("GBK");// �������%>
<body>
<h1>welcome</h1>
<%
	User user=new User();
	user.setUserno(DAOFactory.getIUserDAOInstance().getCurMaxno());
	user.setUsername(request.getParameter("username"));
	user.setUserpsd(request.getParameter("userpsd"));
	user.setAddate(Calendar.getInstance().getTime() );
	try{
		if(DAOFactory.getIUserDAOInstance().doCreate(user)){
	%> 
		<h3>�˻���ӳɹ�</h3>
	<%
		}else{
	%>
		<h3>�˻����ʧ��</h3>
	<%
		}
	}catch (Exception e){
		e.printStackTrace();
	%>	
		<h3>�����쳣</h3>
		<%=Integer.parseInt(request.getParameter("deluserno"))%>
		<%=e%>
	<%
	}
%>
</body>
</html>