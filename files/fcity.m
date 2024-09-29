function[city,distance,state,citynumber,citylat,citylong,ma,dcount,count100,count300]=fcity(lat,long)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function finds the nearest city by creating matrix 'mx'. It takes that
% distance and saves it. It finds the cooresponding state 'state' and saves
% it. citynumber is a coordinate of the matrix 'ma'. citylat and citylong
% are the coordinates for the nearest city used in the fprintf statements.
% 'ma' matrix is used for function(trans) to produce a table. The 'ma'
% matrix is a matrix used for the table in function(trans). textname
% produces the name for the table in order. 'count100' and 'count300' count the
% number of miles within 100 miles and 300 miles. 
% 
% Function Call
% xlsread is the only available way to read text at the moment. That is why
% it is used.
%
% Input Arguments
% 1. lat - From exec function. Current latitude location.
% 2. long - From exec function. Current longitude location.
% Output Arguments
% 1. city - nearest city to your location.
% 2. distance - distance to nearest capital based on your lat long input.
% 3. state - nearest state to lat long.
% 4. citynumber - coordinate in matrix 'ma' for closest city
% 5. citylat - closest city latitude.
% 6. citylong - cloest city longitude.
% 7. ma - matrix for nearest city distances within 300 miles.
% 8. dcount - counts number of cities within 300 miles.
% 9. count100 - counts nearest cities within 100 miles.
% 10. count300 - counts nearest cities 100 to 300 miles.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
Capitalsll=load('Capitalsll.txt');%loads capital data in alphebetical order by state of long and lat of their capital.
lat_p=deg2rad(lat);%converts input of lat to rad.
long_p=deg2rad(long);%converts input of long to rad.
lattitude_p=Capitalsll(:,1);%lattitude of each capital.
longitude_p=Capitalsll(:,2);%longitude of each capital.
lattitude=deg2rad(lattitude_p);%converts lattitude_p to rad.
longitude=deg2rad(longitude_p);%converts longitude_p to rad.
r=6371;%radius of earth in km.
len1=length(lattitude);%this measures how long the lattitude matrix is in the excel file. 
mx=0;%initial input for matrix 'mx'.
ma=0;%initial input for matrix 'ma'.
dcount=0;%initial input for 'dcount'.
factor=0.621371;%converter factor: mile/km. 
count100=0;%initial counter value.
count300=0;%initial counter value.
[~, text, ~] = xlsread('Counter.xlsx');%Uses xlsread to read text. Text variable is equal to the text in the excel file. NOTE: 
% only current available way to import text into matlab.
%% ____________________
%% CALCULATIONS
for count=1:1:len1%counts how long matrix 'mx' will be.
    lat_c=lattitude(count,1);%changes location for new imput into matrix 'mx'.
    long_c=longitude(count,1);%same as above "". 
    mx(count,1) = 2*r*asin(sqrt((sin((lat_c-lat_p)./2)).^2+cos(lat_p)*cos(lat_c).*(sin((long_c-long_p)./2)).^2));%equation for 
    %distance between two lat and long points on globe. Source in report.
    if ((mx(count,1)*factor)>0)&&((mx(count,1)*factor)<=100)%counter for nearest 100 mile capitals. 
        dcount=1+dcount;%Counts how many cities are within 100 miles.
        ma(dcount,1)=mx(count,1);%Counts total number of cities within 300 miles.
        count100=1+count100;%Counts how many cities are within 100 miles.
    elseif ((mx(count,1)*factor)>100)&&((mx(count,1)*factor)<=300)%
        dcount=1+dcount;%Counts total number of cities within 300 miles.
        ma(dcount,1)=mx(count,1);%Records city in a matrix.
        count300=1+count300;%Counts how many cities are between 100-300 miles.
    end
end
distance=min(mx);%records least distance.
citynumber=find(mx==distance);%finds the coordinate of this distance.
%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
citylat=Capitalsll(citynumber,1);%Records nearest city lat.
citylong=Capitalsll(citynumber,2);%Records nearest city long.
citys=text(citynumber,1);%Records city name.
state=text(citynumber,2);%Records state name.
city=char(citys);%Converts array citys into a character array.
%% ____________________
%% COMMAND WINDOW OUTPUT
fprintf('There are %i capital cities 300 miles from %i longitude and %i lattitude.\n',dcount,lat,long);%Records amount of states
% within 300 miles.
