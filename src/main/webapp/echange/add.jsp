<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contact</title>
</head>
<body>

	<h2>Echange</h2>


	<section class="panel">
		<s:actionerror />
		<s:form action="addAction">
			<s:hidden name="echange.id" />

			<div class="row">
				<label class="col col-lg-3 control-label">type</label>
				<div class="col col-lg-8">
					<s:textfield name="echange.type"
						cssClass="bg-focus parsley-validated" placeholder="type" />
				</div>
			</div>
			
			<div class="row">
				<label class="col col-lg-3 control-label">Contact</label>
				<div class="col col-lg-8">
				
					<s:select label="Pets"
       name="petIds"
       list="contacts"
       listKey="id"
       listValue="name"
       multiple="false"
       size="1"
       required="true"
       value="%{contact.id}"
/>
						
				</div>
			</div>

			<div class="row">
				<label class="col col-lg-3 control-label">date</label>
				<div class="col col-lg-8">
					<s:textfield name="echange.date"
						cssClass="bg-focus parsley-validated" placeholder="Date time" />
				</div>
			</div>

			<div class="row">
				<label class="col col-lg-3 control-label">Commentaire</label>
				<div class="col col-lg-8">
					<s:textfield name="echange.commentaire"
						cssClass="bg-focus parsley-validated" placeholder="Commentaire" />
				</div>
			</div>

			<s:submit />
		</s:form>
	</section>


</body>
</html>
