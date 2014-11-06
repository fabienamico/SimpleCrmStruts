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

					<h4></h4>
					<section class="panel">
						<header class="panel-heading">
							<span class="label bg-success pull-right"><s:property
									value="contacts.size()" /> éléments</span>
							<h4>
								<i class="icon-list"></i>List Contacts
							</h4>
						</header>
						<div class="pull-out">

							<table class="table table-striped m-b-none">


								<thead>
									<tr>
										<th>#</th>
										<th>First name</th>
										<th>Last name</th>
										<th>Email</th>
										<th>Telephone</th>
										<th>mobile</th>
										<th>status</th>
										<th>Entreprise</th>
										<th></th>
									</tr>
								</thead>
								<s:iterator value="contacts">
									<tr>
										<td><s:url value="/contact/contactEchanges"
												var="urlcontact">
												<s:param name="id">
													<s:property value="id" />
												</s:param>
											</s:url> <a href="${urlcontact }" class="btn btn-info btn-mini">
												<s:property value="id" />
										</a></td>
										<td><s:property value="nom" /></td>
										<td><s:property value="prenom" /></td>
										<td><s:property value="mail" /></td>
										<td><s:property value="tel" /></td>
										<td><s:property value="mobile" /></td>
										<td><s:property value="status" /></td>
										<td><s:if test="{entreprise.id!=null}">
												<s:url value="/entreprise/detailEntreprise"
													action="detailEntreprise" var="urlEntrerpise">
													<s:param name="entreprise.id">
														<s:property value="entreprise.id" />
													</s:param>
												</s:url>
												<a href="${urlEntrerpise }" class="btn btn-info btn-mini"><s:property
														value="entreprise.nom" /></a>
											</s:if></td>

										<td><s:url action="deleteAction" var="urlDelete">
												<s:param name="id">
													<s:property value="id" />
												</s:param>
											</s:url> <a href="${urlDelete }"><i
												class="icon-remove icon-large text-danger text"></i></a> <s:url
												action="InitUpdateAction" var="urlUpdate">
												<s:param name="id">
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