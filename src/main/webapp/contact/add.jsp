<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact</title>
</head>
<body>

	<h2>Add Contact</h2>


	<section class="panel">
		<s:actionerror />
		<s:form action="addAction">
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
				<label class="col col-lg-3 control-label">status</label>
				<div class="col col-lg-8">
					<s:textfield name="contact.status"
						cssClass="bg-focus parsley-validated" placeholder="status" />
				</div>

				<%-- <div class="col col-lg-4">
					<s:select value="contact.status">
						<s:optiontransferselect value="1">Contact</s:option>
						<option value="0">posPre</option>
						<option value="0">posPre</option>
					</s:select>
				</div> --%>
			</div>

			<s:submit />
		</s:form>
	</section>


</body>
</html>
