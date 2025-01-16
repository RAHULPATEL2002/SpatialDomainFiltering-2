%% LAB:06 Spatial Domain Filtering Based Restoration (UI22EC58)
% AIM : Perform various Spatial domain filtering techniques on given image. 
% Apply filter operation with a different kernel sizes of 3x3, 7x7, 
% 11x11,15x15 and 21x21
% 1-Low pass filtering
% 2-High pass filtering
% 3-Weighted average filter

% Roll No: UI22EC58
clc; 
clear all; 
close all; 
datetime


% Read the input image
img = imread('cameraman.jpg');
img = rgb2gray(img); % Convert to grayscale if it's a color image
img = im2double(img); % Convert image to double for processing

% Define kernel sizes
kernel_sizes = [3, 7, 11, 15, 21];

% Low-Pass Filtering (Average filtering)
figure;
for i = 1:length(kernel_sizes)
    kernel_size = kernel_sizes(i);
    h = fspecial('average', [kernel_size kernel_size]);
    low_pass_img = imfilter(img, h, 'replicate');
    subplot(2, 3, i); imshow(low_pass_img, []); title(['LPF ' num2str(kernel_size) 'x' num2str(kernel_size)]);
end

% High-Pass Filtering
figure;
for i = 1:length(kernel_sizes)
    kernel_size = kernel_sizes(i);
    % Create high-pass filter by subtracting low-pass filter from an impulse
    h = fspecial('average', [kernel_size kernel_size]);
    impulse_filter = fspecial('sobel'); % Sobel filter for high pass
    high_pass_img = imfilter(img, impulse_filter, 'replicate') - imfilter(img, h, 'replicate');
    subplot(2, 3, i); imshow(high_pass_img, []); title(['HPF ' num2str(kernel_size) 'x' num2str(kernel_size)]);
end

% Weighted Average Filtering (Gaussian filter)
figure;
for i = 1:length(kernel_sizes)
    kernel_size = kernel_sizes(i);
    sigma = 0.3*((kernel_size-1)*0.5 - 1) + 0.8; % Define standard deviation for Gaussian
    h = fspecial('gaussian', [kernel_size kernel_size], sigma);
    weighted_avg_img = imfilter(img, h, 'replicate');
    subplot(2, 3, i); imshow(weighted_avg_img, []); title(['Weighted Avg ' num2str(kernel_size) 'x' num2str(kernel_size)]);
end
