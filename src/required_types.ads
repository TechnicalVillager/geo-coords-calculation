with Interfaces;
with Ada.Text_IO;
with Ada.Numerics.Generic_Elementary_Functions;

--  Contains all the required types and required functions/procedures

package Required_Types is

   type Float_Digits_15 is new
      Interfaces.IEEE_Float_64;

   package Math is new
      Ada.Numerics.Generic_Elementary_Functions (Float_Digits_15);

   package Float_Digits_15_IO is new
      Ada.Text_IO.Float_IO (Float_Digits_15);

   type Geo_Location is record
      Latitude : Float_Digits_15;
      Longitude : Float_Digits_15;
   end record;

   type Distance_Bearing is record
      Distance : Float_Digits_15;
      Bearing : Float_Digits_15;
   end record;

   --  Radius of Earth (m)
   Radius_Of_Earth : constant Float_Digits_15 := 6.371E6;

   function To_Radians (Degree_Value : Float_Digits_15)
                        return Float_Digits_15;

   function To_Degrees (Radian_Value : Float_Digits_15)
                        return Float_Digits_15;

   function Geo_Location_To_Radians (Lat_Lon_Degrees : Geo_Location)
                                     return Geo_Location;

   function Geo_Location_To_Degrees (Lat_Lon_Radians : Geo_Location)
                                     return Geo_Location;

   procedure Put_Float_Digits_15 (Value_String : String;
                                  Float_Digits_15_Value : Float_Digits_15);

   function Get_Float_Digits_15 (Value_String : String)
                                 return Float_Digits_15;

   procedure Put_Distance_Bearing (Dest_Bearing : Distance_Bearing);

   procedure Put_Destination_Location (Geo_Loc : Geo_Location);

   function Get_Input_Options return Integer;

   procedure Put_Invalid_Input_Option;

end Required_Types;