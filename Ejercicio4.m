[x, n] = escalon(0, -10, 10);
x=0.9.^n;
w = [0 : 0.01 : 1] * pi;
[X] = DTFT(x, n, w);
subplot 211; plot(w/pi, abs(X)); grid
xlabel('w / Pi [rad/m]'); title('Magnitud')
subplot 212; plot(w/pi, unwrap(angle(X))/pi); grid
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')