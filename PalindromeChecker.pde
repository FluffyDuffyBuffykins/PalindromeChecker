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
  if(onlyLettersTLC(word).equals(reverse(onlyLettersTLC(word))))
    return true;
  return false;
}
public String reverse(String sWord){
  String str = "";
  for(int i = sWord.length(); i > 0; i--){
    str += (sWord.substring(i - 1, i));
  }
  return str;
}

public String onlyLettersTLC(String sString){
  String str = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
      str += sString.charAt(i);
  }
  return str.toLowerCase();
}



