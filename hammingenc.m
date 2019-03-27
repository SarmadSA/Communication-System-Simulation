function [y] = hammingenc(x)

[h,w] = size(x)
if w == 1, x = x'
end
[h,w] = size(x)
if h > 1, error "Need a 1-D matrix"
end

x

P = [ 1 1 0 1 ; 1 0 1 1 ; 0 1 1 1 ] ;
G = [ diag([1 1 1 1]), P' ] 
H = [ P, diag([1 1 1]) ] ;

y = mod( x*G, 2 ) ;