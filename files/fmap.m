function[]=fmap(lat,long,state,citynumber,citylat,citylong)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function graphs the state on a longitude and lattitude map. The
% inner circle represents the nearest capital. The outside small circle is
% your current location. The big circle is your location radius relative to
% the nearest capital.
% Function Call
% 1. Calls geoshape function within matlab. Geoshape essentially imports the
% map correctly. Credits from https://www.mathworks.com/matlabcentral/answers/160625-mapping-toolbox-geoshow-superimposing
% -us-state-boundaries-but-transparent-state-regions.
% 2. scircle function - makes a circle around a center and point. source: http://radio.feld.cvut.cz/matlab/pdf_doc/map/map_ug.pdf
% 3. track2 function - creates a line from a point to a point on a graph.
% Same source as 2.
% Input Arguments
% 1. lat - lattiude of location.
% 2. long - longitude of location.
% 3. citynumber - coordinate of closest city from a matrix.
% 4. citylat - closest city latitude.
% 5. citylong - closesdt city longitude.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
x=load('Capitalsll.txt');%loads data from 51 capital longitudes and latitudes.
latc=x(citynumber,1);%loads first column for latitudes.
longc=x(citynumber,2);%loads first column from longitudes.
%% ____________________
%% CALCULATIONS
 
%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT
usamap(state);%displays map.
ax = usamap(state);%puts in closest state into map.
states = geoshape(shaperead('usastatehi', 'UseGeoCoords', true));%puts together the state on the map with the right lat long shape.
oceanColor = [.5 .7 .9];%Creates the ocean color.
setm(ax, 'FFaceColor', oceanColor)%adds state color to face color.
setm(ax,'MapProjection','mercator')%sets mercator for map.
geoshow(states)%This displays the states on the map.
gridm off;%shuts off the grid lines for geoshow.
textm(states.LabelLat, states.LabelLon, states.Name,...%Souce: HELP textm
  'HorizontalAlignment', 'center')
title('Nearest state capital');%Titles the graph.
northArrowLat=latc+1;%creates arrow 1 more lattitude from location.
northArrowLon=longc+1;%creates arrow 1 more longitude from location.
northarrow('Latitude', northArrowLat, 'Longitude', northArrowLon);%Plots arrow. Source from function 1.
[latc,longc]=scircle2(citylat,citylong,lat,long);%inputs city longitude+latitude, creates points around this from lat long.
[latline,longline] = track2('gc',lat,long,citylat,citylong);%makes points of line from capital to location.
plotm(latc,longc);%plots scirlce2.
plotm(lat,long,'-o');%plots a circle of location.
plotm(citylat,citylong,'-o');%plots circle of nearest capital.
plotm(latline,longline,'b');%plots line between capital and location.

