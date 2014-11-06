<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<jsp:include page="/template/header.jsp">
	<jsp:param value="Index" name="title" />
</jsp:include>

<section id="content">
	<section class="main">
		<div class="padder clearfix">
			<div class="row">


				<h4></h4>

				<section class="panel">
					<header class="panel-heading">
						<ul class="nav nav-tabs pull-right">
							<s:url value="/entreprise/InitUpdateAction" var="urlUpdate">
								<s:param name="entreprise.id">
									<s:property value="entreprise.id" />
								</s:param>
							</s:url>

							<li><a href="${urlUpdate }" data-toggle="tab"><i
									class="icon-pencil icon-large"></i></a></li>
						</ul>
						<span class="hidden-sm"><s:property value="entreprise.nom" /></span>
					</header>
					<div class="tab-content">
						<div class="tab-pane active" id="messages-1">

							<div class="row">

								<ul class="nav">
									<li class="col col-lg-4">


										<div class="form-group">
											<label>Nom : </label>
											<s:property value="entreprise.nom" />
										</div>


									</li>
									<li class="col col-lg-4">

										<div class="form-group">
											<label>Raison Social : </label>
											<s:property value="entreprise.raisonSocial" />
										</div>
									</li>
									<li class="col col-lg-4">

										<div class="form-group">
											<label>Adresse : </label>
											<s:property value="entreprise.adresse" />
										</div>
									</li>
									<li class="col col-lg-4">

										<div class="form-group">
											<label>Secteur d'activité :</label>
									</li>

									</li>
								</ul>

							</div>


						</div>
					</div>
				</section>






				<div class="col col-lg-12">
					<h4></h4>


					<section class="panel">
						<header class="panel-heading">
							<span class="label bg-success pull-right"><s:property
									value="contacts.size()" /> éléments</span>
							<h4>
								<i class="icon-list"></i> Contacts de l'entreprise :
								<s:property value="entreprise.nom" />
							</h4>
						</header>
						<div class="pull-out">

							<table class="table table-hover m-b-none">


								<thead>
									<tr>
										<th>#</th>
										<th>First name</th>
										<th>Last name</th>
										<th>Email</th>
										<th>Telephone</th>
										<th>Mobile</th>
										<th>Status</th>
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
										<td></td>
										<td><s:url value="/contact/contactEchanges"
												var="urlcontact">
												<s:param name="contact.id">
													<s:property value="id" />
												</s:param>
											</s:url> <a href="${urlcontact }"><i
												class="icon-stackexchange icon-large text-info text"></i></a></td>
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