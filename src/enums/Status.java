package enums;

import java.util.ArrayList;
import java.util.List;

public enum Status {
	PENDING("Pending"),
	CLECK_APPROVE("Processing"),
	REJECT("Reject"),
	MANAGER_APPROVE("Aprrove"),
	DONE("Done");
	
	
	String name;

	private Status(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
	
	public static List<String> getNames() {
		List<String> data = new ArrayList<>();
		for(Status status : Status.values()) {
			data.add(status.getName());
		}
		return data;
	}
	
}
