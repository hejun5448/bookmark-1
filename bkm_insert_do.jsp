<%@ page contentType="text/html" pageEncoding="GBK"%>
<%@ page import="cn.ysu.lius.factory.*,cn.ysu.lius.vo.*"%>
<%@ page import="java.text.*"%>
<html>
<head><title>my��ǩ</title></head>
<%request.setCharacterEncoding("GBK");// �������%>
<body>
<h1>welcome</h1>
<%
	Bkm bkm=new Bkm();
	bkm.setBkmno(Integer.parseInt(request.getParameter("bkmno")));
	bkm.setBkmname(request.getParameter("bkmname"));
	bkm.setBkmurl(request.getParameter("bkmurl"));
	bkm.setAddate(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("bkmaddate")));
	try{
		if(DAOFactory.getIBkmDAOInstance().doCreate(bkm)){
		//if(DAOFactory.getIBkmDAOInstance().doDelete(Integer.parseInt(request.getParameter("delbkmno")))){
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
		<%=Integer.parseInt(request.getParameter("delbkmno"))%>
		<%=e%>
	<%
	}
%>
</body>
</html>