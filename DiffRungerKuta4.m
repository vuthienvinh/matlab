function [y]=DiffRungerKuta4(x0,y0,h,xEnd)
f = (x0-y0)/2;
while (x0<xEnd)
    k1=h*(x0-y0)/2;
    k2=h*((x0+(1/2)*h)-(y0+(1/2)*k1))/2;
    k3=h*((x0+(1/2)*h)-(y0+(1/2)*k1))/2;
    k4=h*((x0+h)-(y0+k3))/2;
    y=y0+(1/6)*(k1+2*(k2+k3)+k4);
    y0=y;
    x0=x0+h;
    
end