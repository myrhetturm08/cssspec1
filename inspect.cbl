 Program-Id. Inspect-sample.
 Environment Division.
 Data Division.
 Working-Storage Section.
 01   Phone-number.
    03  Area-code       Pic XXX value "409".
    03  Prefix-num      Pic XXX value "555".
    03  Last-four       Pic X(4)  value "1212".
 01   Formatted-Number      Pic X(14) value "(XXX) YYY-ZZZZ".
 01   Formatted-Alternate   Pic X(14) value " THIS IS SPAI".
 01	  CCOUNT PIC 99 VALUE 00.
 Procedure Division.
 Start-of-program.
    Inspect Formatted-Number
        Replacing All "XXX" by Area-code
                All "YYY" by Prefix-num
                All "ZZZZ" by Last-four.
    Display Formatted-Number.
    Inspect Formatted-Alternate
        Replacing FIRST "XXX" by Area-code
                First "XXX" by Prefix-num
                First "XXXX" by Last-four.
    Display Formatted-Alternate.
    Inspect FORMATTED-ALTERNATE 
        Replacing ALL "-" by "*".
    DISPLAY FORMATTED-ALTERNATE.
   
    Inspect FORMATTED-ALTERNATE Replacing Characters by "*".
 	Inspect FORMATTED-ALTERNATE
 		Converting "QWERTYUIOPASDFGHJKLZXCVBNM" 
 		TO "abcdefghijklmnopqrstuvwxyz".
 		
 		DISPLAY FORMATTED-ALTERNATE (1:4).
 
    Stop Run.
