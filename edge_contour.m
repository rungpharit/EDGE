boat=imread('boat.JPG');
gray=rgb2gray(boat);

sobel=edge(gray,'sobel');
prewitt=edge(gray,'prewitt');
f=fspecial('laplacian');
laplac=imfilter(gray,f,'symmetric');
canny=edge(gray,'canny');

subplot(2,3,1);
imshow(boat);title('Original image');
subplot(2,3,2);
imshow(gray);title('Gray image');
subplot(2,3,3);
imshow(sobel,[]);title('Sobel image');
subplot(2,3,4);
imshow(prewitt,[]);title('Prewitt image');
subplot(2,3,5);
imshow(laplac,[]);title('laplac image');
subplot(2,3,6);
imshow(canny,[]);title('Canny image');