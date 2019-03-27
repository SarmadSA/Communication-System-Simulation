%Oppagve 6.3

function [x] = compare(m,r)

%bit feil (hvor mange bits er feil):
%bitfeil = sum(r)
if m(:) == r(:)
    x = 0;
else
    x = 1;
end
%ord feil (hvor mange ord er feil):