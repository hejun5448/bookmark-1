<%@ page contentType="text/html" pageEncoding="GBK"%>
<html>
<head><title>��ǩer</title>
<body>
<center>
<h1>��½���</h1>
<hr>
<form action="user_login_do.jsp" method="post">
	<TABLE BORDER="1">
	<tr>
		<td colspan="2">�û���¼</td>          
	</tr>
	<!---<tr>
	<td>User���:</td>
	<td><input type="text" name="userno"></td>
	</tr>--->
	<tr>
	<td>�û���</td>
	<td><input type="text" name="username"></td>
	</tr>
	<tr>
	<td>����:</td>
	<td><input type="password" name="userpsd"></td>
	</tr>
	<!---<tr>
	<td>���ʱ��:</td>
	<td><input type="text" name="useraddate"></td>
	</tr>--->
	</table>
	</br>
	<tr>
	<input type="submit" value="��¼">
	<input type="reset" value="����">
	</tr>
<!---</form>
<form action="user_list.jsp" method="post">
	<input type="submit" value="��ѯ">
</form>--->
</center>
</body>
</head>
</html>