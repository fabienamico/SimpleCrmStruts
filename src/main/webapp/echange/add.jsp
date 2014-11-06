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
				<div class="col col-lg-9">
					<s:if test="%{echange.id!=null}">
						<h4>
							<i class="icon-edit"></i>Modification Echange
						</h4>
					</s:if>
					<s:else>
						<h4>
							<i class="icon-expand-alt"></i>Nouvel Echange
						</h4>
					</s:else>


					<section class="panel">
						<s:fielderror fieldName="commentaire" />
						<s:form action="addAction" cssClass="form-horizontal">
							<s:hidden name="echange.id" />

							<div class="row">
								<label class="col col-lg-3 control-label">Type</label>
								<div class="col col-lg-8">
									<select name="echange.type" class="bg-focus parsley-validated">
										<s:iterator
											value="@fr.treeptik.entity.Echange$TypeContact@values()"
											var="type">
											<option value="${type}"><s:property /></option>
										</s:iterator>
									</select>

								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">Contact</label>
								<div class="col col-lg-8">
									<s:select name="echange.contact.id" list="contacts"
										listValue="mail" listKey="id" value="%{echange.contact.id}" />
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">date</label>
								<div class="col col-lg-8">
									<input type="text" class="combodate"
										data-format="DD-MM-YYYY HH:mm"
										data-template="D  MMM  YYYY  -  HH : mm" name="dateEchange"
										value="<s:date name="echange.date" format="dd-MM-YYYY HH:mm" />"
										style="display: none;">
								</div>
							</div>

							<div class="row">
								<label class="col col-lg-3 control-label">Commentaire</label>
								<div class="col col-lg-8">
									<s:textarea name="echange.commentaire" rows="10"
										cssClass="bg-focus parsley-validated"
										placeholder="Commentaire" />

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
<script
	src="<c:url value="/theme/Template-Admin/js/datepicker/bootstrap-datepicker.js"/>"></script>

<!-- combodate -->
<script
	src="<c:url value="/theme/Template-Admin/js/combodate/moment.min.js"/>"></script>
<script
	src="<c:url value="/theme/Template-Admin/js/combodate/combodate.js"/>"></script>
<!-- combodate -->
<script
	src="<c:url value="/theme/Template-Admin/js/combodate/moment.min.js"/>"></script>
<script
	src="<c:url value="/theme/Template-Admin/js/combodate/combodate.js"/>"></script>

<jsp:include page="/template/footer.jsp" />