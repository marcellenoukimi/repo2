public class SimpleCodingExercise {
	public static boolean isVowel(char c) {
		if(c=='a' || c=='e' || c=='i' || c=='o' || c=='u')
			return true;
		else
			return false;
	}
	
	public static String removeVowels(String s) {
		StringBuilder sb= new StringBuilder();
		sb.append(s);
		for(char c: s.toCharArray()) {
			if(isVowel(c))
				sb.deleteCharAt(sb.indexOf(""+c));
		}
		return sb.toString();
	}
	
	public static void main(String[] args) {
		System.out.println(removeVowels("welcome to Java World"));
	}
}
