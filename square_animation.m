clear all
close all
clc

% Initial square position and dimensions
x0 = 0;
y0 = 0;
w0 = 2;
h0 = 2;

% Fixed axis limits
xmin =  0;
xmax = 25;
ymin =  0;
ymax = 25;

Colors = [1 0.9 0.5];
      
% Incremental changes to the position of the square
alpha   = [.9 .8 .7 .6 .5 .4 .3 .2 .15 .1];
delta_x = [2 3.9 5.5 6.9 8.1 9.1 10 10.6 11 11.4];
delta_y = [2.1 4.1 5.8 7.4 8.7 10 10.9 11.7 12.4 13];
      
% Initialize plot
figure(1);
H = rectangle('Position', [x0,y0,w0,h0], 'FaceColor', Colors(1,:));
title('Square Animation')
axis([xmin xmax ymin ymax])

% Animation
% For all steps
for i=1:numel(alpha)
    % Update square position and dimensions
    x = x0 * alpha(i) + delta_x(i);
    y = y0 * alpha(i) + delta_x(i);
    w = 2;
    h = 2;
    % Pause for half a second
    pause(0.5);
    % Record movie frame
    F(i) = getframe;
    % Update square
    set(H, 'Position', [x,y,w,h], 'FaceColor', Colors(1,:));
end
% Last frame
F(end+1) = getframe;
% Play movie
movie(F,20)