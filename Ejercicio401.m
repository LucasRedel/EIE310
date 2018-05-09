load h.txt
subplot 211;
plot(h, '.'); grid
xlabel('n');
title('h(n)');
f = 0 : 100 : 200000;
M = abs(freqz(h,1,f,101500));%el ultimo valor lo remplazamos por 101500 para que corte en 180k
subplot 212;
semilogy(f*2/1000, M); grid;%se multiplica f*2 para que quede en 40kHz
axis([0 200 0.000001 10]);%Cambiamos el segundo valor axis para la frecuencia
xlabel('f[kHz]');
title('Mag[H(f)]');