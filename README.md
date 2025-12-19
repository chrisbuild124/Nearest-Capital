# Nearest-Capital

A MATLAB project that calculates the nearest U.S. state capital based on your latitude and longitude. This tool uses spherical geometry to account for Earth's curvature and was developed as part of my Civil Engineering degree at Purdue University.

## Program Overview

This project includes four user-defined functions and one executive function (`exec.m`) that coordinates the workflow:

- `exec.m`: Acts as the main function. Prompts the user for latitude and longitude, then calls the other functions.
- `fcity.m`: Calculates the nearest U.S. state capital and provides:
  - Distance to the capital (in km)
  - Capital's name, latitude, and longitude
  - Count of capitals within 0–100 miles and 100–300 miles
- `fmap.m`: Generates a map showing:
  - User's location
  - Nearest capital
  - A connecting line and radius circle
  - Compass and state labels
- `transp.m`: Creates a data table estimating travel time (in hours) to nearby capitals via:
  - Car, plane, train, and bus
  - If no capitals are within 300 miles, a message is displayed instead

## How to Use

1. **Download the following files** into your MATLAB project folder:
   - `Capitalsll.txt`
   - `Counter.xlsx`
   - `exec.m`
   - `fcity.m`
   - `fmap.m`
   - `transp.m`

   ![File Setup](https://github.com/user-attachments/assets/a427820b-54d0-4b5b-8b1e-1e57751cf414)

2. **Run the program** by typing `exec` in the MATLAB command window.  
   You’ll be prompted to enter a latitude (decimal format, negative for west/south).

   ![Latitude Prompt](https://github.com/user-attachments/assets/f0e35028-70bf-4285-93c9-6c0bab4946fc)

3. **Input validation** ensures latitude is between -180 and 180. If not, you'll be asked to re-enter.

   ![Validation Example](https://github.com/user-attachments/assets/50f4953b-78ae-46bc-875f-1be46cf1ce45)

4. **Enter longitude** using the same format. Once both are valid, the map and data outputs will appear.

   ![Map Output](https://github.com/user-attachments/assets/de4af52f-894a-4e97-82a8-db0d48ad8d43)

   - Middle circle: Nearest capital  
   - Outer circle: Your location  
   - Large circle: Distance radius

5. **Results** include:
   - Nearest capital city
   - Number of capitals within 0–100 and 100–300 miles
   - Travel time estimates via multiple transport modes
     
   ![Map Detail](https://github.com/user-attachments/assets/fae88ec4-ce1f-44ce-8226-1a99f384deee)

NOTE:
> ⚠️ If no capitals are within 300 miles, no data table will be generated. A message will be displayed instead.
   ![Data Table](https://github.com/user-attachments/assets/6a42e432-bb36-4b38-bc0a-5713f04dfc30)

---
