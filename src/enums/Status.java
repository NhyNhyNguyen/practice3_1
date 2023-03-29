package enums;

public enum Status {
	PENDING("Pending"),
	CLECK_APPROVE("Processing"),
	MANAGER_APPROVE("Aprrove"),
	DONE("Done");
	
	
	String name;

	private Status(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
	
	
	
}
