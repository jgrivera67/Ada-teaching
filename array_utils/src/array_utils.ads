--
--  Copyright (c) 2022, German Rivera
--  All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  * Redistributions of source code must retain the above copyright notice,
--    this list of conditions and the following disclaimer.
--
--  * Redistributions in binary form must reproduce the above copyright notice,
--    this list of conditions and the following disclaimer in the documentation
--    and/or other materials provided with the distribution.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--
package Array_Utils is

   -- TODO: Change this package to a generic package that takes  Elment_Type as
   -- a parameter
   subtype Element_Type is Integer;

   type Array_Type is array (Positive range <>) of Element_Type;

   --
   --  Search a given value in an array and returns the index of the array where
   --  the value was first found, or 0 if the value was not found in the array.
   --  This function uses the linear search algorithm.
   --
   function Linear_Search (A : Array_Type; Value : Element_Type) return Natural;

   --
   --  Search a given value in an array and returns the index of the array where
   --  the value was found, or 0 if the value was not found in the array.
   --  This function uses the binary search algorithm.
   --
   --  Precondition: The array is sorted in ascending order and it has no duplicates
   --
   function Binary_Search (A : Array_Type; Value : Element_Type) return Natural;

end Array_Utils;
