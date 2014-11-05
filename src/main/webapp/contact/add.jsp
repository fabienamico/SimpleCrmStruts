<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<jsp:include page="/template/header.jsp">
	<jsp:param value="Index" name="title" />
</jsp:include>

<section id="content">
	<section class="main">
		<div class="padder clearfix">
			<div class="row">
				<div class="col col-lg-6">
					<s:if test="%{echange.id!=null}">
						<h4>
							<i class="icon-edit"></i>Modification Contact
						</h4>
					</s:if>
					<s:else>
						<h4>
							<i class="icon-expand-alt"></i>Nouvel Contact
						</h4>
					</s:else>


					<section class="panel">
						<s:actionerror />
						<s:form action="addAction" cssClass="form-horizontal">
							<s:hidden name="contact.id" />

							<div class="row">
								<label class="col col-lg-3 control-label">nom</label>
								<div class="col col-lg-8">
									<s:textfield name="contact.nom"
										cssClass="bg-focus parsley-validated" placeholder="nom" />
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">prenom</label>
								<div class="col col-lg-8">
									<s:textfield name="contact.prenom"
										cssClass="bg-focus parsley-validated" placeholder="prenom" />
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">mail</label>
								<div class="col col-lg-8">
									<s:textfield name="contact.mail"
										cssClass="bg-focus parsley-validated" placeholder="mail" />
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">tel</label>
								<div class="col col-lg-8">
									<s:textfield name="contact.tel"
										cssClass="bg-focus parsley-validated" placeholder="tel" />
								</div>
							</div>
							<div class="row">
								<label class="col col-lg-3 control-label">mobile</label>
								<div class="col col-lg-8">
									<s:textfield name="contact.mobile"
										cssClass="bg-focus parsley-validated" placeholder="mobile" />
								</div>
							</div>
							<div class="row">
								<label class="col col-lg-3 control-label">Entreprise</label>
								<div class="col col-lg-8">
									<s:select name="contact.entreprise.id" list="entreprises"
										listValue="nom" listKey="id" value="%{contact.entreprise.id}" />
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">status</label>
								<div class="col col-lg-8">
									<s:textfield name="contact.status"
										cssClass="bg-focus parsley-validated" placeholder="status" />
										
									<%-- 	<select name="contact.status" class="bg-focus parsley-validated">
										<s:iterator
											value="@fr.treeptik.entity.Contact$Status@values()"
											var="status">
												<option value="${status}">
											</option>
										</s:iterator>
									</select> --%>
								</div>

								<%-- <div class="col col-lg-4">
					<s:select value="contact.status">
						<s:optiontransferselect value="1">Contact</s:option>
						<option value="0">posPre</option>
						<option value="0">posPre</option>
					</s:select>
				</div> --%>
							</div>
							<div class="row">
								<div class="col col-lg-9 col-offset-3">
									<s:submit cssClass="btn btn-primary" />
								</div>
							</div>
						</s:form>
					</section>

				</div>
			</div>
		</div>
	</section>
</section>


<jsp:include page="/template/footer.jsp" />