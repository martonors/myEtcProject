%Clear workspace
clear;

%Get root project directory
projectRootDir = fileparts(mfilename('fullpath'));

%Add project directories to path
addpath(projectRootDir);
addpath(fullfile(projectRootDir,'data'),'-end');
addpath(fullfile(projectRootDir,'documents'),'-end');
addpath(fullfile(projectRootDir,'libraries'),'-end');
addpath(fullfile(projectRootDir,'models'),'-end');
addpath(fullfile(projectRootDir,'work'),'-end');

%Set location where derived files are placed
Simulink.fileGenControl('set', 'CacheFolder', fullfile(projectRootDir,'work'), ...
    'CodeGenFolder', fullfile(projectRootDir,'work'));

%Load base workspace data
load busDataCh6;
load globDataCh6;
load cfgDataCh6;