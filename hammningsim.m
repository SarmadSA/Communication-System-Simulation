%Oppgave 6.8

function [OrdFeil] = hammningsim(n,p)
OrdFeil = 0;
BitFeil = zeros(1,n);
for i = 1:n
    [m,c] = hammenc(generateMessage(4));
    r = BSC(c,p);
    m1= hammingdec(r);
    OrdFeil = compare(m,m1) + OrdFeil;
    BitFeil(i) = comparebits(m,m1);
end

OrdFeil
figure
histogram(BitFeil)
    
    