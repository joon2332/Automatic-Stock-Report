function [ scale ] = scale_init(y)
%SCALE_INIT Summary of this function goes here
%   Detailed explanation goes here


scale = [log(sqrt(abs(mean(y)))) log(sqrt(abs(mean(y))))];

end
