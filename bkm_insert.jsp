<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>��ǩer</title>
<body>
<form action="bkm_insert_do.jsp" method="post">
	��ǩ���:<input type="text" name="bkmno"><br>
	��ǩ����:<input type="text" name="bkmname"><br>
	��ǩURL : <input type="text" name="bkmurl"><br>
	���ʱ��:<input type="text" name="bkmaddate"><br>
	ɾ    ��:<input type="text" name="delbkmno"><br>
	<input type="submit" value="sign in">
	<input type="submit" value="rewrite">
</form>
<form action="bkm_list.jsp" method="post">
	<input type="submit" value="��ѯ">
</form>
</body>
</head>
</html>