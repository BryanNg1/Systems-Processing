image = imread('ee3tp3picture2020.png');
image_of_doubles = double(image);
num_bins = 20;
image_of_doubles = 11*image_of_doubles-1737;
%based on equation given, optimal alpha and beta found

%histogram
[n_elements, centers] = hist(image_of_doubles(:), num_bins);
bar(centers, n_elements);
xlim([0 255]);
title('Bryan Ng 400181785 | Matthew Badal Badalian 400187878');

%show image
imshow(uint8(image_of_doubles));

%save image
image_to_save = uint8(fixed_image);
imwrite(image_to_save, 'saved_image.png');

%Bryan Ng 400181785
%Matthew Badal Badalian 400187878