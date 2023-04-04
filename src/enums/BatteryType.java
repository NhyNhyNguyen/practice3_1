package enums;

import java.util.ArrayList;
import java.util.List;

public enum BatteryType {
	AC,
	DC;
	
	public static List<String> getNames(){
		List<String> names = new ArrayList<>();
		for(BatteryType type : BatteryType.values()) {
			names.add(type.name());
		}
		return names;
	}
}
