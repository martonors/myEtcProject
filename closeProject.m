%Get root project directory
projectRootDir = fileparts(mfilename('fullpath'));

%Remove project folders from path
rmpath(projectRootDir);
rmpath(fullfile(projectRootDir,'data'));
rmpath(fullfile(projectRootDir,'documents'));
rmpath(fullfile(projectRootDir,'libraries'));
rmpath(fullfile(projectRootDir,'models'));
rmpath(fullfile(projectRootDir,'work'));

%Reset location where derived files are placed
Simulink.fileGenControl('reset');

%Clear workspace
clear;
clc;