-- File: logic.adb
package body Logic is
     function Fuzzy_AND 
        (A, B : Flogic) 
        return Flogic is
            begin
            return Flogic'Min (A, B);
            end;
  
     function Fuzzy_OR 
        (A, B : Flogic) 
        return Flogic is
            begin
            return Flogic'Max (A, B);
            end;
  
     function Fuzzy_NOT 
        (A : Flogic) 
        return Flogic is
            begin
            return 1.0 - A;
            end;
     end Logic;
