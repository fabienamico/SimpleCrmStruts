<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Products</title>
</head>
<body>
	<table border="1px" cellpadding="8px">
		<tr>
			<th>ID</th>
			<th>First name</th>
			<th>Last name</th>
			<th>Email</th>
			<th>Telephone</th>
			<th>mobile</th>
			<th>status</th>
			<th>del</th>
			<th>update</th>
		</tr>
		<s:iterator value="contacts">
			<tr>
				<td><s:property value="id" /></td>
				<td><s:property value="nom" /></td>
				<td><s:property value="prenom" /></td>
				<td><s:property value="mail" /></td>
				<td><s:property value="tel" /></td>
				<td><s:property value="mobile" /></td>
				<td><s:property value="status" /></td>
				<td><s:url action="deleteAction" var="urlDelete">
						<s:param name="id">
							<s:property value="id" />
						</s:param>
					</s:url> <a href="${urlDelete }">delete</a></td>
				<td><s:url action="InitUpdateAction" var="urlUpdate">
						<s:param name="id">
							<s:property value="id" />
						</s:param>
					</s:url> <a href="${urlUpdate }">update</a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
