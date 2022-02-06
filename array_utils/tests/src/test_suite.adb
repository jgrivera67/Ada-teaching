with Array_Utils.Test_Cases;
with AUnit.Test_Caller;

package body Test_Suite is

   package Caller is new AUnit.Test_Caller (Array_Utils.Test_Cases.Test_Case);

   function Create_Test_Suite return AUnit.Test_Suites.Access_Test_Suite is
      Test_Suite_Ptr : constant AUnit.Test_Suites.Access_Test_Suite :=
         new AUnit.Test_Suites.Test_Suite;
   begin
      Test_Suite_Ptr.Add_Test
        (Caller.Create (
           "Test_Linear_Search_Element_Found_First_Entry",
           Array_Utils.Test_Cases.Test_Linear_Search_Element_Found_First_Entry'Access));

      Test_Suite_Ptr.Add_Test
        (Caller.Create (
           "Test_Linear_Search_Element_Found_Last_Entry",
           Array_Utils.Test_Cases.Test_Linear_Search_Element_Found_Last_Entry'Access));

      Test_Suite_Ptr.Add_Test
        (Caller.Create (
           "Test_Linear_Search_Element_Found_Middle_Entry",
           Array_Utils.Test_Cases.Test_Linear_Search_Element_Found_Middle_Entry'Access));

      Test_Suite_Ptr.Add_Test
        (Caller.Create (
           "Test_Linear_Search_Element_Not_Found",
           Array_Utils.Test_Cases.Test_Linear_Search_Element_Not_Found'Access));

      --  TODO: Add unit tests for Binary_Search

      return Test_Suite_Ptr;
   end Create_Test_Suite;

end Test_Suite;
