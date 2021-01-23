char[] vowels = {'a', 'e', 'o', 'u', 'i'};
public void setup() 
{
String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println(lines.length);
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int i = 0; i < sWord.length(); i++){
    for(int x = 0; x < vowels.length; x++){
      if(sWord.charAt(i) == vowels[x]){
        return i;
      }
    }
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1) // no vowels
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0) // first letter is vowel
  {
    return sWord + "way";
  }
  else if(sWord.substring(0,2).equals("qu")) // starts with "qu"
  {
    return sWord.substring(2,sWord.length()) + "quay";
  }
  else{ //starts w consonant
    return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  }
}
