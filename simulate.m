%Oppgave 6.4 6.5, 6.6 (new version)

function [OrdFeil] = simulate(n,l,p) %n = times, l = length, p = proppapily
OrdFeil = 0;
BitFeil = zeros(1,n);
for i = 1:n
    m = generateMessage(l);
    r = BSC(m,p);
    OrdFeil = compare(m,r) + OrdFeil;
    BitFeil(i) = comparebits(m,r);
end

OrdFeil
figure
histogram(BitFeil)
ylabel('Messages')
xlabel('Bit errors')
    
    