with Required_Types; use Required_Types;

package Geographic_Coordinates is

   --  Function Distance_Bearing_Calculation returns the distance and
   --  bearing between two geographic locations (home and destination).
   function Distance_Bearing_Calculation (Home : Geo_Location;
                                          Destination : Geo_Location)
                                          return Distance_Bearing;

   --  Function Destination_Location returns the destination's location
   --  from home location by using the distance and bearing between
   --  two locations.
   function Destination_Location (Home : Geo_Location;
                                  Dist_Bearing : Distance_Bearing)
                                  return Geo_Location;
end Geographic_Coordinates;