package fr.treeptik.action;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import fr.treeptik.entity.Echange;
import fr.treeptik.service.EchangeService;

@Component(value = "echangeAction")
@Scope("prototype")
@Namespace("/echange")
public class EchangeAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Autowired
	private EchangeService echangeService;
	private String dateEchange;
	private Echange echange = new Echange();
	private List<Echange> echanges = new ArrayList<>();
	private List<Contact> contacts = new ArrayList<>();

	public void validate() {

		// if (getContact().getNom().trim().length() == 0) {
		// addFieldError("firstname", "First name is required.");
		// }

	}

	@Action(value = "InitUpdateAction", results = { @Result(name = "success", location = "/echange/add.jsp") })
	@SkipValidation
	public String initUpdate() {
		if (echange.getId() != null) {
			echange = echangeService.get(echange.getId());
		}
		contacts = echangeService.getContacts();
		return "success";

	}

	@Action(value = "addAction", results = {
			@Result(name = "success", type = "redirectAction", location = "listAction.action"),
			@Result(name = "input", location = "/echange/add.jsp") })
	public String addEmployee() throws Exception {
		System.out.println("ADD echange");

		System.out.println("date :" + dateEchange);

		echange.setDate(getDatajava());

		echangeService.add(echange);

		return "success";
	}

	@Action(value = "listAction", results = { @Result(name = "success", location = "/echange/list.jsp") })
	@SkipValidation
	public String listEmployees() throws Exception {
		echanges = echangeService.getAll();
		// System.out.println("taille : " + echanges.size());
		return "success";
	}

	@Action(value = "deleteAction", results = { @Result(name = "success", type = "redirectAction", location = "listAction.action") })
	@SkipValidation
	public String deleteEmployees() throws Exception {

		echangeService.delete(echange.getId());
		return "success";
	}

	public Echange getEchange() {
		return echange;
	}

	public void setEchange(Echange echange) {
		this.echange = echange;
	}

	public List<Echange> getEchanges() {
		return echanges;
	}

	public void setEchanges(List<Echange> echanges) {
		this.echanges = echanges;
	}

	public List<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}

	public Date getDatajava() {
		// DD-MM-YYYY HH:mm
		DateFormat formatter = new SimpleDateFormat("DD-MM-YYYY HH:mm");
		Date date = null;
		try {
			date = formatter.parse(dateEchange);
		} catch (ParseException e) {
			return date;
		}
		return date;
	}

	public String getDateEchange() {
		return dateEchange;
	}

	public void setDateEchange(String dateEchange) {
		this.dateEchange = dateEchange;
	}

}