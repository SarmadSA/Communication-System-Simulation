%Oppgave 6.9

function [OrdFeil] = bchencsim(n,p)
OrdFeil = 0;
BitFeil = zeros(1,n);
for i = 1:n
    [m,c] = bchhenc(generateMessage(11));
    r = BSC(c,p);
    m1= bchdec(r);
    OrdFeil = compare(m,m1) + OrdFeil;
    BitFeil(i) = comparebits(m,m1);
end

OrdFeil
figure
histogram(BitFeil)