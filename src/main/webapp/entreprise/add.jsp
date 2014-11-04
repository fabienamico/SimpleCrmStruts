<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact</title>
</head>
<body>

	<h2>Add Entrerpise</h2>


	<section class="panel">
		<s:actionerror />
		<s:form action="addAction">
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
						cssClass="bg-focus parsley-validated" placeholder="Raison Social" />
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
				<label class="col col-lg-3 control-label">tel</label>
				<div class="col col-lg-8">
					<s:textfield name="entreprise.secteurActivite"
						cssClass="bg-focus parsley-validated"
						placeholder="secteurActivité" />
				</div>
			</div>


			<s:submit />
		</s:form>
	</section>


</body>
</html>
