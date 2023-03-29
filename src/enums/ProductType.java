package enums;

import java.util.ArrayList;
import java.util.List;

public enum ProductType {
	Solar, Power;

	public static List<String> getNames() {
		List<String> data = new ArrayList<>();
		for(ProductType productType : ProductType.values()) {
			data.add(productType.name());
		}
		return data;
	}
}
