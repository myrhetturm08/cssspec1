 Identification Division.
 Program-ID.   Sample1.
 Environment Division.
 Data Division.
 Working-Storage Section.
 01  Numbers.
     02  num1    pic 9(3).
     02  num2      pic 9(3). 

 Procedure Division.
 Display-Routine.
         Display erase.
    Display "Enter NUM1 = ".
    Accept num1.
    Display "Enter NUM2 = " with no advancing.
    Accept num2.
    Display "The Numbers are = " with no advancing.
    Display num1 num2.
    Stop Run.
