function [bits] = comparebits(m,m1)
x = (m(:)==m1(:));
y = not(x);
bits = sum(y);