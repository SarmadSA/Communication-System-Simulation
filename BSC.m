function [r] = BSC(c,p)
e = generateError(p,c);
d = c + e;
r = mod(d,2);