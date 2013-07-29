function pvd(V, theta)

% Progressive Vector Diagram(PVD) using V and Theta  pdv.m
% 
% Plotting Progressive Vector Diagram using V and Theta where
% V = (u^2+v^2)^(1/2)
% theta = atan(u/v)
%
% Use:
% >> pdv(V,theta)
%
% License
% All of MatlabPVD is licensed under the MIT license.
% Copyright (c) 2013 Balaji Thota <balajithota85@gmail.com>
%

len = length(V);
i = 1;
VCosine = 1:len;
VSine = 1:len;
while i<=len
    VCosine(i) = V(i) * cos(theta(i));
    VSine(i) = V(i) * sin(theta(i));
    i = i + 1;
end
X = cumsum([0 ; VCosine(:)]);
Y = cumsum([0 ; VSine(:)]);
quiver(X(1:len),Y(1:len),VCosine(:),VSine(:),0);
