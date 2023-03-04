# Geographic Coordinates calculation for determining the Destination Location or Distance & Bearing

This project reads user input on the execution and perform the following operations based on the user inputs:
1. Gets the input home & destination location's geographic coordinates and returns the distance and bearing between two locations
2. Gets the input home location and the destination's distance and bearing, and returns the destination's geographic coordinates

Used `alr` for building and running the project.

## Usage
For Building the Project:
```
alr build
```
For Building and Running the Project:
```
alr run
```

## Output

  ### Scenario 1

```
ⓘ Building geo_coords_calculation/geo_coords_calculation.gpr...
Compile
   [Ada]          geo_coords_calculation.adb
   [Ada]          geographic_coordinates.adb
   [Ada]          required_types.adb
Bind
   [gprbind]      geo_coords_calculation.bexch
   [Ada]          geo_coords_calculation.ali
Link
   [link]         geo_coords_calculation.adb
Build finished successfully in 7.07 seconds.
Input Options:
Enter 1 for Calculating Distance and Bearing
Enter 2 for Calculating Destination Location
1
Enter the Latitude Value:
51.502310
Enter the Longitude Value:
-0.097335
Enter the Latitude Value:
51.502398
Enter the Longitude Value:
-0.095866
Distance = 102.14937003520048 (Metres)
Bearing = 84.50248476050882 (Degrees)
```

  ### Scenario 2

```
ⓘ Building geo_coords_calculation/geo_coords_calculation.gpr...
gprbuild: "geo_coords_calculation" up to date
Build finished successfully in 0.50 seconds.
Input Options:
Enter 1 for Calculating Distance and Bearing
Enter 2 for Calculating Destination Location
2
Enter the Latitude Value:
51.502310
Enter the Longitude Value:
-0.097335
Enter the Distance Value:
102.14937
Enter the Bearing Value:
84.50248
Latitude = 51.50239800007595 (Decimal Degrees)
Longitude = -0.09586600001225 (Decimal Degrees)
```

## Project Structure

```
.
├── alire
│ ├── alire.lock
│ └── config.toml
├── alire.toml
├── bin
├── config
│ ├── geo_coords_calculation_config.ads
│ ├── geo_coords_calculation_config.gpr
│ └── geo_coords_calculation_config.h
├── geo_coords_calculation.gpr
├── obj
│ └── development
├── README.md
├── share
│ └── geo_coords_calculation
└── src
├── geo_coords_calculation.adb
├── geographic_coordinates.adb
├── geographic_coordinates.ads
├── required_types.adb
└── required_types.ads
```

```
ⓘ Note: Above structure is before building the project!
```

## References
1. [Python Version](https://github.com/TechnicalVillager/distance-bearing-calculation)