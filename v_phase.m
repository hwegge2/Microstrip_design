function [ v_phase ] = v_phase( w_to_h, Er )

if w_to_h < 1
    Eeff=(Er+1)/2+(Er-1)/2*((1+12*(1/w_to_h))^(-1/2)+0.04*(1-w_to_h)^2);
else
    Eeff=(Er+1)/2 + (Er-1)/2*(1+12*(1/w_to_h))^(-1/2);
    
c=3*10^8

v_phase = c/sqrt(Eeff);

end

