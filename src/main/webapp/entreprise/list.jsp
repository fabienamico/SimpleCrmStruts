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
							<span class="label bg-info pull-right"><s:property
									value="entreprises.size()" /> éléments</span>
							<h4>
								<i class="icon-list"></i>List Entreprise
							</h4>
						</header>
						<div class="pull-out">

							<table class="table table-striped m-b-none">
								<thead>
									<tr>
										<th style="width: 6%;">#</th>
										<th>Nom</th>
										<th>raisonSocial</th>
										<th>adresse</th>
										<th style="width: 8%;"></th>
									</tr>
								</thead>
								<s:iterator value="entreprises">
									<tr>
										<td><s:url value="/entreprise/detailEntreprise"
												action="detailEntreprise" var="urlEntrerpise">
												<s:param name="entreprise.id">
													<s:property value="id" />
												</s:param>
											</s:url> <a href="${urlEntrerpise }" class="btn btn-info btn-mini"><s:property
													value="id" /></a></td>
										<td><s:property value="nom" /></td>
										<td><s:property value="raisonSocial" /></td>
										<td><s:property value="adresse" /></td>
										<td><s:url action="deleteAction" var="urlDelete">
												<s:param name="entreprise.id">
													<s:property value="id" />
												</s:param>
											</s:url> <a href="${urlDelete }"><i
												class="icon-remove icon-large text-danger text"></i></a> <s:url
												action="InitUpdateAction" var="urlUpdate">
												<s:param name="entreprise.id">
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

