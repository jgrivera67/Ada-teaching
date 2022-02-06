with AUnit.Assertions;

package body Array_Utils.Test_Cases is

   Test_Array : constant Array_Type (1 .. 8) := (10, 20, 30, 40, 50, 60, 70, 80);

   procedure Test_Linear_Search_Element_Found_First_Entry (T : in out Test_Case) is
      pragma Unreferenced (T);
   begin
      AUnit.Assertions.Assert (Linear_Search (Test_Array, 10) = Test_Array'First,
                               "Entry not found at expected location");
   end Test_Linear_Search_Element_Found_First_Entry;

   procedure Test_Linear_Search_Element_Found_Last_Entry (T : in out Test_Case) is
      pragma Unreferenced (T);
   begin
      AUnit.Assertions.Assert (Linear_Search (Test_Array, 80) = Test_Array'Last,
                               "Entry not found at expected location");
   end Test_Linear_Search_Element_Found_Last_Entry;

   procedure Test_Linear_Search_Element_Found_Middle_Entry (T : in out Test_Case) is
      pragma Unreferenced (T);
   begin
      AUnit.Assertions.Assert (Linear_Search (Test_Array, 40) = 4,
                               "Entry not found at expected location");
   end Test_Linear_Search_Element_Found_Middle_Entry;

   procedure Test_Linear_Search_Element_Not_Found (T : in out Test_Case) is
      pragma Unreferenced (T);
   begin
      AUnit.Assertions.Assert (Linear_Search (Test_Array, 45) = 0,
                               "Entry should not have been found");
   end Test_Linear_Search_Element_Not_Found;

end Array_Utils.Test_Cases;