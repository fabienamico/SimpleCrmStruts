package fr.treeptik.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Entreprise;
import fr.treeptik.service.EntrepriseService;

@Component(value = "entrerpiseAction")
@Scope("prototype")
@Namespace("/entreprise")
public class EntrepriseAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Autowired
	private EntrepriseService entrepriseService;

	private Entreprise entreprise = new Entreprise();
	private List<Entreprise> entreprises = new ArrayList<>();
	private List<Contact> contacts = new ArrayList<>();

	public void validate() {

		// if (getContact().getNom().trim().length() == 0) {
		// addFieldError("firstname", "First name is required.");
		// }

	}

	@Action(value = "InitUpdateAction", results = { @Result(name = "success", location = "/entreprise/add.jsp") })
	@SkipValidation
	public String initUpdate() {
		if (entreprise.getId() != null) {
			entreprise = entrepriseService.get(entreprise.getId());
		}
		return "success";

	}

	// detailEntreprise

	@Action(value = "detailEntreprise", results = { @Result(name = "success", location = "/entreprise/details.jsp") })
	@SkipValidation
	public String detailEntreprise() {

		entreprise = entrepriseService.get(entreprise.getId());
		contacts = entrepriseService.getContactfromEntrepriseId(entreprise
				.getId());
		return "success";

	}

	@Action(value = "addAction", results = {
			@Result(name = "success", type = "redirectAction", location = "listAction.action"),
			@Result(name = "input", location = "/entreprise/add.jsp") })
	public String addEmployee() throws Exception {
		System.out.println("ADD EMPLOYEE");

		System.out.println(entreprise);

		entrepriseService.add(entreprise);

		return "success";
	}

	@Action(value = "listAction", results = { @Result(name = "success", location = "/entreprise/list.jsp") })
	@SkipValidation
	public String listEmployees() throws Exception {
		entreprises = entrepriseService.getAll();
		System.out.println("taille : " + entreprises.size());
		return "success";
	}

	@Action(value = "deleteAction", results = { @Result(name = "success", type = "redirectAction", location = "listAction.action") })
	@SkipValidation
	public String deleteEmployees() throws Exception {

		entrepriseService.delete(entreprise.getId());
		return "success";
	}

	public Entreprise getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(Entreprise entreprise) {
		this.entreprise = entreprise;
	}

	public List<Entreprise> getEntreprises() {
		return entreprises;
	}

	public void setEntreprises(List<Entreprise> entrerpises) {
		this.entreprises = entrerpises;
	}

	public List<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}

}