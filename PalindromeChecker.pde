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
