<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<jsp:include page="/template/header.jsp">
	<jsp:param value="Index" name="title" />
</jsp:include>

<section id="content">
	<section class="main">
		<div class="padder clearfix">
			<div class="row">
				<div class="col col-lg-12">
					<h4>
						<i class="icon-list"></i> Contacts de l'entreprise : <s:property value="entreprise.nom" />
					</h4>


					<table aria-describedby="DataTables_Table_0_info"
						id="DataTables_Table_0"
						class="table table-striped m-b-none dataTable"
						data-ride="datatables">
						<thead>
							<tr>
								<th>ID</th>
								<th>First name</th>
								<th>Last name</th>
								<th>Email</th>
								<th>Telephone</th>
								<th>mobile</th>
								<th>status</th>
								<th></th>
							</tr>
						</thead>
						<s:iterator value="contacts">
							<tr>
								<td><s:property value="id" /></td>
								<td><s:property value="nom" /></td>
								<td><s:property value="prenom" /></td>
								<td><s:property value="mail" /></td>
								<td><s:property value="tel" /></td>
								<td><s:property value="mobile" /></td>
								<td><s:property value="status" /></td>
								<td>
									</td>
								<td><s:url value="/contact/deleteAction" var="urlDelete">
										<s:param name="id">
											<s:property value="id" />
										</s:param>
									</s:url> <a href="${urlDelete }"><i
										class="icon-remove icon-large text-danger text"></i></a> <s:url
										value="/contact/InitUpdateAction" var="urlUpdate">
										<s:param name="id">
											<s:property value="id" />
										</s:param>
									</s:url> <a href="${urlUpdate }"><i class="icon-pencil"></i></a></td>
							</tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</section>
</section>


<jsp:include page="/template/footer.jsp" />

