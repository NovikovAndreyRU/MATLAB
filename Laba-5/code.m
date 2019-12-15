n_image8 = genImgWithNoise(zeros(800), 1);%For more information watch "Functions" in the end of the file
path = 'DIP\Lab2\';%Path to save dir
n_hist_fig = figure('visible','off');%Selector for Hist figure
imhist(n_image8);%Generate histogram for 8 bit IMG
ylim([1400,2400]);
if ~exist(path, 'dir')%Check if the path to save exist, if it false create it
   mkdir(path)
end
saveas(n_hist_fig,fullfile(path, 'noiseHist.png'));%Save histogram
n_image8 = setObject(n_image8, 'object1.png', 360, 360);
imwrite(n_image8, fullfile(path, 'imgWithObject1.png'));%Save new IMG with Object 1 in center
n_image8_big = imresize(n_image8, 2, 'nearest');%Resize img use formul size*2=img type nearest
n_image8_small = imresize(n_image8, 0.5, 'bilinear');%Resize img use formul size*0.5=img type bilinear
imwrite(n_image8_big, fullfile(path, 'imgBig.png'));%Save big variant of img
imwrite(n_image8_small, fullfile(path, 'imgSmall.png'));%Save small varaint of img
n_image8 = genImgWithNoise(zeros(800), 1);
n_image8 = setObject(n_image8, 'object2.png', 0, 0);%For more information watch "Functions" in the end of the file
n_image8 = setObject(n_image8, 'object3.png', 720, 720);%For more information watch "Functions" in the end of the file
n_image8_flop = fliplr(n_image8);%Change pixels from left to right
imwrite(n_image8_flop, fullfile(path, 'imgFlop.png'));%Save fliped from left to right Img
n_image8_flip = flipud(n_image8);%Change pixels from up to down
imwrite(n_image8_flip, fullfile(path, 'imgFlip.png'));%Save fliped from up to down Img
n_image8_rotate = imrotate(n_image8,-45);%Rotate IMG to -45 dec.
imwrite(n_image8_rotate, fullfile(path, 'imgRotate-45.png'));%Save rotated IMG
n_image8_rotate = imrotate(n_image8,45);%Rotate IMG to 45 dec.
imwrite(n_image8_rotate, fullfile(path, 'imgRotate45.png'));%Save rotated IMG
n_image_RGB = imread('space.png');%Load random image from internet
n_image = rgb2gray(n_image_RGB);%Cray IMG to use next in 14 ex.
n_image8 = im2uint8(n_image);%Img to 8 bit
n_image_croped = imcrop(n_image8,[600 0 799 799]);%Crop image from left top corner
n_image_bright = n_image_croped/4;%Matrix/4 for change bright
n_image8 = n_image_bright;
n_image8 = setObject(n_image8, 'object2.png', 0, 0);
n_image8 = setObject(n_image8, 'object3.png', 720, 720);
n_image8_noise = genImgWithNoise(n_image8, 0.5);
imwrite(n_image8_noise, fullfile(path, 'picWithNoiseandObjects.png'));%Save edited space
n_image8_nega = imadjust(n_image8_noise, [0 1], [1 0]);
imwrite(n_image8_nega, fullfile(path, 'picNega.png'));%Save negative space
n_image_v2 = setObject(n_image_bright, 'object1.png', 360, 360);
n_image_v2 = genImgWithNoise(n_image_v2, 0.5);
imwrite(n_image_v2, fullfile(path, 'picWithNoiseandObject1.png'));%Save space
n_image_v3 = n_image_v2 - n_image8_noise;
imwrite(n_image_v3, fullfile(path, 'pic-pic.png'));%Save space
function image8WithObject = setObject(imgForEdit, fileWithObject, iPoz, jPoz)
        object = im2double(imread(fileWithObject));%Load img of object from file and convert to 2 bit
        for i = 1:size(object, 1)%Loop for print object on 8 bit img (idea github.com/iuriinesterov)
            for j = 1:size(object, 2)
                if (object(i,j) < 1)
                    imgForEdit(i+iPoz, j+jPoz) = object(i,j);%iPoz and jPoz this is offset from left top corner of original IMG
                end
            end
        end
        image8WithObject = imgForEdit;
end
function image8WithNoise = genImgWithNoise(imgForEdit, density)
        for x = 1:density*numel(imgForEdit)
            imgForEdit(randi(800), randi(800)) = rand(1); 
        end
        imgForEdit = mat2gray(imgForEdit);%Matrix to Gray IMG
        image8WithNoise = im2uint8(imgForEdit);%Gray IMG to 8 bit IMG
end