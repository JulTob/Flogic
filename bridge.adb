-- File: bridge.adb
with Ada.Text_IO; use Ada.Text_IO;
with Logic;

procedure Bridge is
   function Fuzzy_AND_C (A, B : Float) return Float;
   pragma Export (C, Fuzzy_AND_C, "fuzzy_and");

   function Fuzzy_AND_C (A, B : Float) return Float is
       begin
       return Float(Logic.Fuzzy_AND(A, B));
       end;
       
   function Fuzzy_OR_C (A, B : Float) return Float;
   pragma Export (C, Fuzzy_OR_C, "fuzzy_or");

   function Fuzzy_OR_C (A, B : Float) return Float is
       begin
       return Float(Logic.Fuzzy_OR(A, B));
       end;
       
   function Fuzzy_NOT_C (A: Float) return Float;
   pragma Export (C, Fuzzy_NOT_C, "fuzzy_not");

   function Fuzzy_NOT_C (A : Float) return Float is
       begin
       return Float(Logic.Fuzzy_NOT(A));
       end;

  begin
     null;
     end Bridge;
