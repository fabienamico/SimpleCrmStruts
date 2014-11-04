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
			<th>Nom</th>
			<th>raisonSocial</th>
			<th>adresse</th>
			<th>del</th>
			<th>update</th>
		</tr>
		<s:iterator value="entreprises">
			<tr>
				<td><s:property value="id" /></td>
				<td><s:property value="nom" /></td>
				<td><s:property value="raisonSocial" /></td>
				<td><s:property value="adresse" /></td>
				<td><s:url action="deleteAction" var="urlDelete">
						<s:param name="entreprise.id">
							<s:property value="id" />
						</s:param>
					</s:url> <a href="${urlDelete }">delete</a></td>
				<td><s:url action="InitUpdateAction" var="urlUpdate">
						<s:param name="entreprise.id">
							<s:property value="id" />
						</s:param>
					</s:url> <a href="${urlUpdate }">update</a></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
