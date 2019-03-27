function [x] = hammingdec(y)

[h,w] = size(y)
if w == 1, y = y'
end
[h,w] = size(y)
if h > 1, error "Need a 1-D matrix"
end


P = [ 1 1 0 1 ; 1 0 1 1 ; 0 1 1 1 ] ;
G = [ diag([1 1 1 1]), P' ] ;
H = [ P, diag([1 1 1]) ] ;

h = mod( H*y', 2 ) ;

e = [ 0 0 0 0 ]
for i = 1:4,
   if P(:,i) == h,
      e(i) = 1
   end
end

x = mod(y(1:4)+e,2) ;