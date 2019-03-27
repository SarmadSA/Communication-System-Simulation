%%

m = 1000;
p = 0.1;

%6.12
ham4Sim = hammningsim(m,p); %4 hardcoded
bhc11sim = bchencsim(m,p); %11 hardcoded
unkoded4sim = simulate(m,4,p);
unkoded11sim = simulate(m,11,p);

%6.13
ham4SimP = ham4Sim/m;
bhc11simP = bhc11sim/m;
unkoded4simP = unkoded4sim/m;
unkoded11simP = unkoded11sim/m;

%6.14
ham4SimSTA = sqrt(ham4SimP*(1-ham4SimP)/m);
bhc11simSTA = sqrt(bhc11simP*(1-bhc11simP)/m);
unkoded4simSTA = sqrt(unkoded4simP*(1-unkoded4simP)/m);
unkoded11simSTA = sqrt(unkoded11simP*(1-unkoded11simP)/m);

%6.16
ham4SimKonfNed = ham4SimP-1.96*ham4SimSTA;
ham4SimKonfOvr = ham4SimP+1.96*ham4SimSTA;
bhc11simKonfNed = bhc11simP-1.96*bhc11simSTA;
bhc11simKonfOvr = bhc11simP+1.96*bhc11simSTA;
unkoded4simKonfNed = unkoded4simP-1.96*unkoded4simSTA;
unkoded4simKonfOvr = unkoded4simP+1.96*unkoded4simSTA;
unkoded11simKonfNed = unkoded11simP-1.96*unkoded11simSTA;
unkoded11simKonfOvr = unkoded11simP+1.96*unkoded11simSTA;
%%
%6.18
x = simulate(100,7,0.1);
x = 100 - x
pdf('binom',0,4,0.1)
%% 

%6.22

m = 200;
p1 = 0.1;
p2 = 0.2;

unkoded11sim1 = simulate(m,11,p1);
unkoded11sim2 = simulate(m,11,p2);
bhc11sim1 = bchencsim(m,p1); %11 bits hardcoded
bhc11sim2 = bchencsim(m,p2); %11 bits hardcoded
