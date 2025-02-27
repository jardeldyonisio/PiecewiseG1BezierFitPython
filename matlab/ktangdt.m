function [P,ang,dt] = ktangdt(x)

% function [P,ang,dt] = ktangdt(x). This handy function separates
% the composite vector, x, of parameters for a curve into the sub
% components of knots, P, angles, ang, and distances, dt. It was
% written by E. J. Lane.

%disp("x entrando");
%disp(x);

m = length(x); 
n = round(m/5);

P(1,:) = x(1:n); 	% knots.
P(2,:) = x(n+1:2*n);

%disp("P");
%disp(P);

ang = x(2*n+1:3*n); 	% angles.

%disp("x");
%disp(x);

dt(1,:) = x(3*n+1:4*n-1);
%disp("x(3*n+1:4*n-1)");
%disp(x(3*n+1:4*n-1))
dt(2,:) = x(4*n:m); 	% distances.