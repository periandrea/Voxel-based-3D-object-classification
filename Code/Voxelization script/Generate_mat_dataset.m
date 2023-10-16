%This script is used to transform the meshes in the dataset to voxel grids.
%It will create a dataset with the same folder organization, but containing
% .mat files, one for each voxel grid. In addiction, it augment the datasets 
% with the different views of each object (12 view per object)

addpath(genpath('utils_pre_processing/'));

modelnet10_classes = {'bathtub','bed','chair','desk','dresser','monitor','night_stand','sofa','table','toilet'};
modelnet40_classes = {'airplane','bathtub','bed','bench','bookshelf','bottle','bowl','car',...
    'chair','cone','cup','curtain','desk','door','dresser','flower_pot','glass_box',...
    'guitar','keyboard','lamp','laptop','mantel','monitor','night_stand','person',...
    'piano','plant','radio','range_hood','sink','sofa','stairs','stool','table',...
    'tent','toilet','tv_stand','vase','wardrobe','xbox'};

off_path='C:\Users\andre\Desktop\UniPD\Neural networks and deep learning\Project\Dataset\ModelNet40_man_aligned';
mat_path='C:\Users\andre\Desktop\UniPD\Neural networks and deep learning\Project\Dataset\ModelNet40_ma_voxelized_mat';

volume_size = 24;
pad_size = 4;
angle_inc = 30;
modelnet_off2mat(off_path,mat_path,modelnet40_classes,volume_size,pad_size,angle_inc);



% In the folder utils_pre_processing in the .zip file, we defined the 
% functions used for the conversion of the dataset.
% modelnet_off2mat is the main function. It will call the off_loader
% function, used to import data from .off files and to create different
% views of the object.
% polygon2voxel is called inside modelnet_off2mat to convert the
% meshes into voxels. It contains a set of controls and options, while the
% actual converison is operated from an external C function:
% polygon2voxel_double.c contains the voxelization function
% polygon2voxel_double.mexw64  is the MEX file used to run a C function in
% Matlab
