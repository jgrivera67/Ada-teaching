with AUnit;
with AUnit.Test_Fixtures;

package Array_Utils.Test_Cases is

   type Test_Case is new AUnit.Test_Fixtures.Test_Fixture with null record;

   procedure Test_Linear_Search_Element_Found_First_Entry (T : in out Test_Case);

   procedure Test_Linear_Search_Element_Found_Last_Entry (T : in out Test_Case);

   procedure Test_Linear_Search_Element_Found_Middle_Entry (T : in out Test_Case);

   procedure Test_Linear_Search_Element_Not_Found (T : in out Test_Case);

   --  TODO: Add unit tests for Binary_Search

end Array_Utils.Test_Cases;