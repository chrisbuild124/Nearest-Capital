# Nearest-Capital
This is a MATLAB project that finds the nearest capital to your latitude &amp; longitude location. It uses the distance spherical shape of the earth. I completed this in my Civil Engineering degree at Purdue University. 

**Program Components**

  - The code has four user defined functions, one executive function (exec) that calls on three other user defined functions (fcity, fmap, transp).
  - Additional information displaced includes the nearest state capital, the distance to that capital (from your location), how many cities 0-100 miles away, and how many cities 100-300 miles away.
  - The executive function runs as the equivalent of a main function in python. It asks for your current latitude and longitude location. 
  - The fcity function will take your location and calculate the nearest capital city in the 50 states of US. It will also track your distance to that city in km, track the name of the capital’s state, the            latitude and longitude that capital is (degrees). Additionally it will track all capital cities within 300 miles of your inputted latitude and longitude, count how many cities within the 300 miles of your         location, count how many cities 0-100 miles of your location, and count how many cities 100-300 miles of your location. 
  - The fmap function will graph your location on a longitude and latitude map, graph a line to the nearest capital city, plot a circle around the capital city with a radius equal to the distance between the     
    inputted location and the capital, plots a compass with the north pointing north, and labels the map with states or titles.
  - The transp function will create a data table with the nearest capital cities with the time it takes in a straight line on the earth to go on: car, plane, train, and bus in hours (average). It then has two         options with the data: 1) If the number of cities is greater than 0, then it will create a table with these times and display it. 2) If the number of cities within 300 miles is equal to 0, no table will be        created and an fprintf statement will appear. 

**User Interaction & How to use**

1.	Download files and upload to a project location of your choosing: Capitalsll.txt, Counter.xlsx, exec.m, fcity.m, fmap.m, and transp.m. 

![image](https://github.com/user-attachments/assets/a427820b-54d0-4b5b-8b1e-1e57751cf414)

2.	Type “exec” into the command window to use the program. You will need to input a location in the US (50 states) on land of ~30 miles off the coast of land. The executive function will first prompt you to input the latitude (in decimal form and negative for west or south). 

![image](https://github.com/user-attachments/assets/f0e35028-70bf-4285-93c9-6c0bab4946fc)

3.	If user does not input a latitude between -180 and 180, the user will be prompted to re-input the latitude between -180 and 180 until they do so. A message will appear telling them the input was incorrect. (ex. Input 39 degrees as latitude).

![image](https://github.com/user-attachments/assets/50f4953b-78ae-46bc-875f-1be46cf1ce45)

 
5.	User can input the longitude with the same domain as the latitude. (ex. -  -83 as longitude). Output of the map will appear and the output of fprintf statements along with data table will appear.
6.	
![image](https://github.com/user-attachments/assets/de4af52f-894a-4e97-82a8-db0d48ad8d43)

Middle circle is the capital, outside small circle is the current location of latitude and longitude that the user inputted, big circle is the radius between those two points.

![image](https://github.com/user-attachments/assets/fae88ec4-ce1f-44ce-8226-1a99f384deee)

Output is displayed. For this location, there are 7 capital cities 300 miles from user’s latitude and longitude location in the US. Data table lists each distance of those 7 cities with their expected time if gone in a straight line with: car, plane, train, and bus. Nearest capital city is displayed, how many cities between 0-100 miles and 100-300 miles is displayed, and user is told that there is a graph of the current location. 

NOTE: If there is no city 300 miles from user’s latitude and longitude, no data table will appear. Example of latitude 0 and longitude 0 (outside of US so it is over 300 miles away from any US capital):  

![image](https://github.com/user-attachments/assets/6a42e432-bb36-4b38-bc0a-5713f04dfc30)

