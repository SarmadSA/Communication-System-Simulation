function [x] = bchdec(y)

% This code has message length k=11 and codeword length n=31.
% It is the [31,11] BCH code.

n = 31 ;
k = 11 ;

[h,w] = size(y)
if h == 1, y = y'
end
[h,w] = size(y)
if w > 1, error "Need a 1-D matrix"
end


%hEnc = comm.BCHEncoder('CodewordLength', n, 'MessageLength', k);
%y = step(hEnc,x); % BCH encoding

hDec = comm.BCHDecoder('CodewordLength', n, 'MessageLength', k);
x = step(hDec,y); % BCH decoding
