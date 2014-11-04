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
import com.opensymphony.xwork2.ModelDriven;

import fr.treeptik.entity.Contact;
import fr.treeptik.service.ContactService;

@Component(value = "contactAction")
@Scope("prototype")
@Namespace("/contact")
public class ContactAction extends ActionSupport implements
		ModelDriven<Contact> {

	private static final long serialVersionUID = 1L;

	@Autowired
	private ContactService contactService;

	private Contact contact = new Contact();
	private List<Contact> contacts = new ArrayList<>();

	@Override
	public Contact getModel() {
		return contact;
	}

	public void validate() {

		// if (getContact().getNom().trim().length() == 0) {
		// addFieldError("firstname", "First name is required.");
		// }

	}

	@Action(value = "InitUpdateAction", results = { @Result(name = "success", location = "/contact/add.jsp") })
	@SkipValidation
	public String initUpdate() {
		contact = contactService.get(contact.getId());

		return "success";

	}

	@Action(value = "addAction", results = {
			@Result(name = "success", type = "redirectAction", location = "listAction.action"),
			@Result(name = "input", location = "/contact/add.jsp") })
	public String addEmployee() throws Exception {
		System.out.println("ADD EMPLOYEE");

		System.out.println(contact);

		contactService.add(contact);

		return "success";
	}

	@Action(value = "listAction", results = { @Result(name = "success", location = "/contact/list.jsp") })
	@SkipValidation
	public String listEmployees() throws Exception {
		contacts = contactService.getAll();

		return "success";
	}

	@Action(value = "deleteAction", results = { @Result(name = "success", type = "redirectAction", location = "listAction.action") })
	@SkipValidation
	public String deleteEmployees() throws Exception {

		contactService.delete(contact.getId());
		return "success";
	}

	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}

	public List<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}

}