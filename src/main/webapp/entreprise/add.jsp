<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
							<i class="icon-edit"></i>Modification Entreprise
						</h4>
					</s:if>
					<s:else>
						<h4>
							<i class="icon-expand-alt"></i>Nouvel Entreprise
						</h4>
					</s:else>


					<section class="panel">
						<s:actionerror />
						<s:form action="addAction" cssClass="form-horizontal">
							<s:hidden name="entreprise.id" />

							<div class="row">
								<label class="col col-lg-3 control-label">nom</label>
								<div class="col col-lg-8">
									<s:textfield name="entreprise.nom"
										cssClass="bg-focus parsley-validated" placeholder="nom" />
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">raisonSocial</label>
								<div class="col col-lg-8">
									<s:textfield name="entreprise.raisonSocial"
										cssClass="bg-focus parsley-validated"
										placeholder="Raison Social" />
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">adresse</label>
								<div class="col col-lg-8">
									<s:textfield name="entreprise.adresse"
										cssClass="bg-focus parsley-validated" placeholder="adresse" />
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">secteurActivite</label>
								<div class="col col-lg-8">
									<s:textfield name="entreprise.secteurActivite"
										cssClass="bg-focus parsley-validated"
										placeholder="secteurActivité" />
								</div>
								<div id="MyPillbox" class="pillbox clearfix m-b">
					                  <!-- <ul>
					                    <li class="label">Item One</li>
					                  </ul> -->
								</div>
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

 <!-- / footer -->
	<script src="<c:url value="/theme/Template-Admin/js/jquery.min.js"/>"></script>
  <!-- Bootstrap -->
  <script src="<c:url value="/theme/Template-Admin/js/bootstrap.js"/>"></script>
  <!-- app -->
  <script src="<c:url value="/theme/Template-Admin/js/app.js"/>"></script>
  <script src="<c:url value="/theme/Template-Admin/js/app.plugin.js"/>"></script>
  <script src="<c:url value="/theme/Template-Admin/js/app.data.js"/>"></script>

  <!-- datepicker -->
  <script src="<c:url value="/theme/Template-Admin/js/datepicker/bootstrap-datepicker.js"/>"></script>
 <!-- fuelux -->
  <script src="<c:url value="/theme/Template-Admin/js/fuelux/fuelux.js"/>"></script>
 <!-- combodate -->
  <script src="<c:url value="/theme/Template-Admin/js/combodate/moment.min.js"/>"></script>
  <script src="<c:url value="/theme/Template-Admin/js/combodate/combodate.js"/>"></script>


<!-- parsley -->
  <script src="<c:url value="/theme/Template-Admin/js/combodate/combodate.js"/>"></script>


<jsp:include page="/template/footer.jsp" />