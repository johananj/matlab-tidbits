% Getting the axes labels right. For spectrograms. 

% scaled image with a bone colormap
imagesc(flipud(sm));colormap(flipud(bone));

% MATLAB Docs: Axes properties control the appearance and behavior of an Axes object. 
% By changing property values, you can modify certain aspects of the axes. 
% Use dot notation to query and set properties.
% https://in.mathworks.com/help/matlab/ref/matlab.graphics.axis.axes-properties.html
ax = gca;

% Usually image ticks run from the top to bottom.
% This flips it.
ax.YDir = 'normal';

% setting the ticks and the labels
% ticks are the actual values of the x-axis
% labels are the corresponding labels you want to give these values.
% map these two
ax.XTick = linspace(1,size(sm,2),6);
xt = linspace(0,(trim_e-trim_s),6);
ax.XTickLabel = xt;

% do the same for yticks
ax.YTick = round(linspace(1,size(sm,1),5));
yf = round(linspace(0,fs_in/2,5));
ax.YTickLabel = yf;

% where 
% sm is a 2D matrix containing the STFT or something else.
% fs_in is the sampling rate of the input signal
