public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = Strutil.onlyLetters(word);
  String word3 = Strutil.noCapitals(word2);
  String word4 = Strutil.noSpaces(word3);
  if (word4.equals(Strutil.revString(word4)))
    return true;
  else
  return false;
}
class Strutil
{
  public static String revString(String sWord) {
    String s = "";
    int last = sWord.length()-1;
    for (int i = last; i>=0; i--)
      s = s + sWord.substring(i, i+1);
    return s;
  }
  public static String onlyLetters(String sWord) {
    String s ="";
    int last = sWord.length()-1;
    for (int i = 0; i<=last; i++)
    {
      if (Character.isLetter(sWord.charAt(i)))
      {
        s= s+sWord.charAt(i);
      }
    }
    return s;
  }
public static String noSpaces(String sWord){
  String s ="";
    int last = sWord.length()-1;
    for (int i = 0; i<=last; i++)
    {
      if (sWord.charAt(i) != ' ')
      {
        s= s+sWord.charAt(i);
      }
}
return s;
}
  public static String noCapitals(String sWord) {
    return sWord.toLowerCase();
  }
}
