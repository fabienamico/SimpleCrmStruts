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
					<h4>
						
					</h4>
<section class="panel">
<header class="panel-heading">
              <span class="label bg-info pull-right"><s:property value="echanges.size()" /> éléments</span>
              <h4>
						<i class="icon-list"></i>List Echanges
					</h4>
            </header>
<div class="pull-out">

					 <table class="table table-striped m-b-none">
						<thead>
							<tr>
								<th class="text-center" style="
    width: 3%;
"  class="text-center" >ID</th>
								<th  class="text-center" style="
    width: 14%;
">date</th>
								<th   class="text-center" style="
    width: 13%;
">type</th>
								<th  class="text-center" >Commentaire</th>
								<th  class="text-center" >adresse</th>
<th  class="text-center" >contact</th>
								<th  class="text-center" style="
    width: 6%;
"></th>
							</tr>
						</thead>
						<s:iterator value="echanges">
							<tr>
								<td><s:property value="id" /></td>
								<td><s:date name="date" format="dd/MM/yyyy - HH:mm" /></td>
								<td><s:property value="type" /></td>
								<td><s:property value="commentaire" /></td>
								<td><s:property value="adresse" /></td>
								<td>

									<s:if test="{contact.id!=null}">
											<s:url value="/contact/contactEchanges"
												var="urlcontact">
												<s:param name="id">
													<s:property value="contact.id" />
												</s:param>
											</s:url> 
											<a href="${urlcontact }" class="btn btn-info btn-mini">
												<s:property value="contact.prenom" /> <s:property value="contact.nom" />
											</a>


									</s:if>
									
								</td>
								<td><s:url action="deleteAction" var="urlDelete">
										<s:param name="echange.id">
											<s:property value="id" />
										</s:param>
									</s:url> <a href="${urlDelete }"><i
										class="icon-remove icon-large text-danger text"></i></a> <s:url
										action="InitUpdateAction" var="urlUpdate">
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
