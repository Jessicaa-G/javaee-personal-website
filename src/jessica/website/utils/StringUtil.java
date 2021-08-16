package jessica.website.utils;

public class StringUtil {
	
	public static boolean is_Empty(String s){
		if(s.trim().equals("")||s==null){
			return true;
		}
		return false;
	}
}
