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

					<section class="panel clearfix">
						<div class="col col-lg-2">

							<div>


								<span class="btn btn-info btn-circle"><i
									class="icon-user"></i> <s:property value="contact.prenom" /> <s:property
										value="contact.nom" /> </span>
								<div class="pull-right">
									<s:url value="/contact/InitUpdateAction" var="urlUpdate">
										<s:param name="contact.id">
											<s:property value="id" />
										</s:param>
									</s:url>
									<a href="${urlUpdate }"><i class="icon-pencil"></i></a>
								</div>
							</div>
						</div>
						<div class="pull-out col col-lg-10">
							<table class="table table-striped m-b-none">

								<tbody>

									<tr>
										<td><label class="control-label">nom :</label></td>
										<td><s:property value="contact.nom" /></td>
										<td><label class=" control-label">prenom :</label></td>
										<td><s:property value="contact.nom" /></td>

									</tr>


									<tr>
										<td><label class="control-label">mail :</label></td>
										<td><s:property value="contact.mail" /></td>
										<td><label class="control-label">mobile :</label></td>
										<td><s:property value="contact.mobile" /></td>

									</tr>
									<tr>
										<td><label class="control-label">tel :</label></td>
										<td><s:property value="contact.tel" /></td>
										<td><label class="control-label">status :</label></td>
										<td><s:property value="contact.status" /></td>

									</tr>

								</tbody>
							</table>
						</div>
					</section>




					<section class="panel">
						<header class="panel-heading">
							<span class="label bg-info pull-right"><s:property
									value="contact.echanges.size()" /> éléments</span>
							<h4>
								<i class="icon-list"></i>List Echanges :
								<s:property value="contact.prenom" />
								<s:property value="contact.nom" />
							</h4>
						</header>

						<div class="pull-out">

							<table class="table table-hover m-b-none">
								<thead>
									<tr>
										<th class="text-center" style="width: 3%;" class="text-center">#</th>
										<th class="text-center" style="width: 15%;">date</th>
										<th class="text-center" style="width: 13%;">type</th>
										<th class="text-center">Commentaire</th>
										<th class="text-center" style="width: 6%;">Action</th>
									</tr>
								</thead>
								<s:iterator value="contact.echanges">
									<tr>
										<td><s:property value="id" /></td>
										<td><s:date name="date" format="dd/MM/yyyy - HH:mm" /></td>
										<td><s:property value="type" /></td>
										<td><s:property value="commentaire" /></td>
										<td><s:url value="/echange/deleteAction" var="urlDelete">
												<s:param name="echange.id">
													<s:property value="id" />
												</s:param>
											</s:url> <a href="${urlDelete }"><i
												class="icon-remove icon-large text-danger text"></i></a> <s:url
												value="/echange/InitUpdateAction" var="urlUpdate">
												<s:param name="echange.id">
													<s:property value="id" />
												</s:param>
											</s:url> <a href="${urlUpdate }"><i class="icon-pencil"></i></a></td>
									</tr>
								</s:iterator>



							</table>
						</div>
					</section>
				</div>
			</div>
		</div>
	</section>
</section>


<jsp:include page="/template/footer.jsp" />