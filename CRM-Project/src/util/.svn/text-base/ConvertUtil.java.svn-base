package util;

import java.lang.reflect.Field;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class ConvertUtil {
	public static Object convert(String[] value,Field f){
		Object val = null;
		if (value==null || value.length==0) {
			return null;
		}
		if (f.getType()==String.class) {
			val = value[0];
		}
		if (!value[0].equals("") && (f.getType()==Integer.class || f.getType()==int.class)) {
			val = Integer.parseInt(value[0]);
		}else if (!value[0].equals("") && (f.getType()==Double.class || f.getType()==double.class)) {
			val = Double.parseDouble(value[0]);
		}else if (!value[0].equals("") && f.getType()==Date.class) {
			val = Date.valueOf(value[0]);
		}else if (!value[0].equals("") && f.getType()==Timestamp.class) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			java.util.Date ud = null;
			try {
				ud = sdf.parse(value[0]);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			val = new Timestamp(ud.getTime());
		}else if (f.getType()==String[].class) {
			val = value;
		}else if (f.getType()==Integer[].class) {
			Integer[] arr = new Integer[value.length];
			for (int i = 0; i < arr.length; i++) {
				arr[i] = Integer.parseInt(value[i]);
			}
			val = arr;
		}
		return val;
	}
}
