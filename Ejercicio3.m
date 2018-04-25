[x, n] = escalon(0, -10, 10);
x=0.4.^n;
w = [0 : 0.01 : 1] * pi;
[X] = DTFT(x, n, w);
subplot 111; plot(w/pi, abs(X));
xlabel('w / Pi [rad/m]');
title('DTFT'); grid