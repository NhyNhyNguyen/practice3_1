package entity;

import java.io.File;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

@Entity
@Table(name = "CUSTOMERS")
public class CustomerEntity {

	@Id
	@Column(name = "ID", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "CUSTOMER_SEQ")
	@SequenceGenerator(name = "CUSTOMER_SEQ", sequenceName = "CUSTOMER_SEQ", allocationSize = 1, initialValue = 1)
	private Long id;

	@Column(name = "NAME")
	@NotNull
	@Size(min=1, max=40)
	private String name;

	@Column(name = "PHONE")
	@NotNull
	@Size(min=1, max=15)
	private String phone;

	@Column(name = "BIRTHDAY")
	@NotNull
	private Date birthday;
	
	@Column(name = "ADDRESS")
	@NotNull
	@Size(min=1, max=40)
	private String address;
	
	@Column(name = "EMAIL")
	@Email
	@NotNull
	@Size(min=1, max=40)
	private String email;
	
	@Column(name = "GENDER")
	private boolean gender;

	@Column(name = "DOCUMENTS")
	private File documents;


	public CustomerEntity() {
	}
	
	public CustomerEntity(Long id, String name, String phone, Date birthday, String address, String email,
			boolean gender, File documents) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.birthday = birthday;
		this.address = address;
		this.email = email;
		this.gender = gender;
		this.documents = documents;
	}

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Date getBirthday() {
		return birthday;
	}


	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public boolean isGender() {
		return gender;
	}


	public void setGender(boolean gender) {
		this.gender = gender;
	}
	
	

	public File getDocuments() {
		return documents;
	}

	public void setDocuments(File documents) {
		this.documents = documents;
	}

	@Override
	public String toString() {
		return "CustomerEntity [id=" + id + ", name=" + name + ", phone=" + phone + ", birthday=" + birthday
				+ ", address=" + address + ", email=" + email + ", gender=" + gender + ", documents=" + documents + "]";
	}


	
}
