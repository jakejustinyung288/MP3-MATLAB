function d = MP3(e,f)
e = input('input x values: ');
f = input('input y values: ');
% this identifies the limit of degree
for ctr = 1:10
% Fits the polynomial
x= polyfit(e,f,ctr);
% Get the norm
d(ctr) = norm(f - polyval(x, e));
end
%Minimize the value
[p,b] = min(d);
%Get the polynomial fitting
v = polyfit(e,f,b);   
%Display the values
fprintf("Degree: %.f\n", b)
disp("The coefficients are:")
disp(v)
end