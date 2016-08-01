function [ w_to_h ] = Microstrip_dimen( Zo,Er )
% This fuunction outputs the width to height ratio of a microstrip line
% given epsilon effective and the characteristic impedance of the line

%Characteristic impedance of free space
Zf=376.73;
%Beta function
B=(Zf*pi)/(2*Zo*sqrt(Er));

e = 2.7183
A = 2*pi*(Zo/Zf)*sqrt((Er+1)/2)+((Er-1)/(Er+1))*(0.23+0.11/Er);

output_ratio = (2/pi)*(B-1-(log(2*B-1)/log(e))+(Er-1)/(2*Er)*((log(B-1)/log(e))+0.39-(0.61/Er)));

if output_ratio > 2
    w_to_h = output_ratio;
else
    w_to_h = (8*e^A)/(e^(2*A)-2);
end

