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
						<i class="icon-list"></i>List Echanges
					</h4>


					<table aria-describedby="DataTables_Table_0_info"
						id="DataTables_Table_0"
						class="table table-striped m-b-none dataTable"
						data-ride="datatables">
						<thead>
							<tr>
								<th>ID</th>
								<th>date</th>
								<th>type</th>
								<th>Commentaire</th>
								<th>adresse</th>
								<th></th>
							</tr>
						</thead>
						<s:iterator value="echanges">
							<tr>
								<td><s:property value="id" /></td>
								<td><s:property value="date" /></td>
								<td><s:property value="type" /></td>
								<td><s:property value="commentaire" /></td>
								<td><s:property value="adresse" /></td>
								<td><s:url action="deleteAction" var="urlDelete">
										<s:param name="echange.id">
											<s:property value="id" />
										</s:param>
									</s:url> <a href="${urlDelete }"><i
										class="icon-remove icon-large text-danger text"></i></a> <s:url
										action="InitUpdateAction" var="urlUpdate">
										<s:param name="echange.id">
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

