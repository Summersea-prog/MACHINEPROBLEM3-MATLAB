clear
clc
points = input('Input points e.g. [x y;x1 y1;...xn yn]: ')
if length(points)>=11
   x=10;  
else
   x=length(points) - 1;
end
for i=1:x
   f = polyfit(points(:, 1), points(:, 2), i);
   v = polyval(f, points(:, 1));
   f = norm(points(:, 2) - v);
   z = [i,f];
   if i==1
      z=z;
   end
   if z(2) >= z(2)
      t = z(1);
   end
end
f = polyfit(points(:,1),points(:,2),t);
disp('Approximate coefficients: ')
disp(f)

