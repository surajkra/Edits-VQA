clear all;
close all;
clc;
%% Load FileList
load('File_List.mat');
rootFolder = fullfile('C:\Users\Dell user\Documents\MATLAB\Depth_Images');
imds = imageDatastore(fullfile(rootFolder), 'LabelSource', 'foldernames');
net = resnet50;
imds.ReadFcn = @(filename)readAndPreprocessImage(filename);
featureLayer = 'fc1000';
trainingFeatures = activations(net, imds, featureLayer, ...
'MiniBatchSize', 32);
