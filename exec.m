function[]=exec()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The executive function calls on 3 functions: fcity, fmap, and transp.  
%
% Function Call
%   1. Calls on fcity function. These outputs display in the fprintf
% statements. This function produces the nearest distance.
%   2. Calls on fmap, no outputs. fmap graphs the nearest capital city.
% Your location is on the circle, capital is in the center. 
%   3. Calls on ftransp to dispay a matrix with times to the nearest area
% with a different way of transportation. 
%
% Input Arguments
%   1. lat + long - Input the latitude and longitude of current location (user input). Latitude and longitude repeat 360 degrees. The inputs must be 
% inputs in the US and I restricted the inputs to be only in -180 and 180 degrees (because long and lat exist only in those). My
% equation could work with =-360n, but like I said, long and lat do not exist in those.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
lat=input('Input Latitude (decimal) of current location in US>> ');%User unput for current latitude in the US. (must be on US land).
while (lat<-180||lat>180)%Must imput degrees with +-360n. Latitude exists between -180 to 180.
    fprintf('Incorrect input. Please try again.\n');
    lat=input('Input Latitude (decimal) of current location>> '); %User will be prompt with these two lines until correct input.
end
long=input('Input Longitude (decimal) of current location in US>> ');
while (long<-180||long>180)%Must imput degrees with +-360n. Longitude exists between -180 to 180.
    fprintf('Incorrect input. please try again.\n');
    long=input('Input Longitude (decimal) of current location>> : '); %User will be prompt with these two lines until correct input.
end
%% ____________________
%% CALCULATIONS
[city,distance,state,citynumber,citylat,citylong,ma,dcount,count100,count300]=fcity(lat,long);%Calls on fcity function.
fmap(lat,long,state,citynumber,citylat,citylong);%Calls on fmap function without outputs, graphs the nearest capital city
% in the center of the circle, and on the outside circled is your current location.
transp(ma,dcount);%Calls on transp function without outputs to display a table.
%
%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT
fprintf('The nearest state capital is %s.\n',city); %Prints the nearest capital to your lat and long location.
fprintf('The distance to %s is %f.3km.\n',city,distance); %Prints the capital and the distance to that capital with your location.
fprintf('There are %i capital cities 0-100 miles of your location.\n',count100); %Prints the number of cities within 100 miles 
% of your location.
fprintf('There are %i capital cities 100-300 miles of your location.\n',count300); %Prints the number of cities between 100 and 300
% miles of your location.
fprintf('The nearest capital city to %f %f is displayed.\n',lat,long); %Prints that the current lat and long city is displayed
% on the graph, so the user will know to look at the graph.
