function[]=transp(ma,dcount)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Either creates a table with the time to the nearest 300 mile cities from
% a car, airplane, train, bus OR says there are no cities within 300 miles.
% Function Call
% N/A
%
% Input Arguments
%   1. ma - matrix of distances within 300 miles (in order).
%   2. dcount - amount of cities within 300 miles.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
mtx=0;%initial value of matrix mtx
%% ____________________
%% CALCULATIONS
 for i=1:1:dcount%this creates the amount of rows.
    for j=1:1:4%This creates 4 columns.
        if j==1%first column number.
            mtx(i,j)=((ma(i,1))./120.701);%calculates average time of car in hours
        elseif j==2%second column number
            mtx(i,j)=((ma(i,1))./885);%calculates average time of plane in hours
        elseif j==3%third column number
            mtx(i,j)=((ma(i,1))./109.435);%calculates average time of train in hours
        elseif j==4%fourth column number
            mtx(i,j)=((ma(i,1))./96.5606);%calculates average time of train in hours
        end
    end
 end

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT
if dcount>0%if the number of cities for this loop is greated than 0.
    car_time=mtx(:,1);%assigns 2nd column data to car_time.
    plane_time=mtx(:,2);%assigns 3rd column data to plane_time.
    train_time=mtx(:,3);%assigns 4th column data to train_time.
    bus_time=mtx(:,4);%assigns 5th column data to bus_time.
    distance_miles=(ma.*0.621371);%Converts each distance to miles.
    T=table(distance_miles,car_time,plane_time,train_time,bus_time);%displays table.
    disp(T);
elseif dcount==0%Does not create a table for the data because there is no data.
    fprintf('There are no traveling cities within 300 miles.\n')%prints this.
end
