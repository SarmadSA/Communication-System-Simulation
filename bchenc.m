function [y] = bchenc(x)

% This code has message length k=11 and codeword length n=31.
% It is the [31,11] BCH code.

n = 31 ;
k = 11 ;

[h,w] = size(x)
if h == 1, x = x'
end
[h,w] = size(x)
if w > 1, error "Need a 1-D matrix"
end


hEnc = comm.BCHEncoder('CodewordLength', n, 'MessageLength', k)
y = step(hEnc,x)

% hDec = comm.BCHDecoder('CodewordLength', n, 'MessageLength', k);
%d1 = step(hDec,c1); % BCH decoding
