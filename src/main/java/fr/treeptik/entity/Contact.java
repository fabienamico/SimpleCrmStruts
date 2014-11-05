package fr.treeptik.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Contact {

	public enum Status {
		ProsPay, Client, Contact
	};

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String nom;
	private String prenom;
	private String mail;
	private String tel;
	private String mobile;
	private String status;
	@OneToOne
	private Entreprise entreprise;

	@OneToMany(mappedBy = "contact")
	private List<Echange> echanges;

	public Contact() {
	}

	public Contact(Integer id, String nom, String mail, String tel,
			String mobile, String status, Entreprise enteprise,
			List<Echange> echanges) {
		this.id = id;
		this.nom = nom;
		this.mail = mail;
		this.tel = tel;
		this.mobile = mobile;
		this.status = status;
		this.entreprise = enteprise;
		this.echanges = echanges;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Contact other = (Contact) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Entreprise getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(Entreprise entreprise) {
		this.entreprise = entreprise;
	}

	public List<Echange> getEchanges() {
		return echanges;
	}

	public void setEchanges(List<Echange> echanges) {
		this.echanges = echanges;
	}

}
