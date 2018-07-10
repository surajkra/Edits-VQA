
%%
%load('nyu_depth_v2_labeled.mat');
%for i=1:size(depths,3)
for i=1:1449
 
    %Img=depths(:,:,i);
    filename=strcat('C:\Users\Dell user\Documents\MATLAB\Depth_Images\','image',num2str(i),'.jpg');
    File_List{i}=filename;
    %imwrite(mat2gray(Img),filename);
end

