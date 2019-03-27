%Oppgave 6.2 2)
%Har brukt litt dårlig funksjons navn her...

function [ordfeil,bitfeil] = randomErrorVector(k,p)
%generate a random message m with length k
m = generateMessage(k);

%generate a random message e with error probbabilty p and length k
e = generateError(p,k);

%step two oppgave 6.2
s = m + e; 
r = mod(s,2);

%antallet bit som er feil
bitfeil = sum(e)

%antallet ord som er feil
ordfeil = compare(m,r)