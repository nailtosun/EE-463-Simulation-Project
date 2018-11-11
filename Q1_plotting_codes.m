%% Question 1 plotting codes
plot(oneusec);
hold on;
plot(tenusec);
plot(oneandhalfmilisec);
grid on;
title('Output voltage of single phase rectifier with different sampling time')
xlabel('Time (secs)')
ylabel('Voltage (Volts)')
legend('1 usec', '10 usec', '1.5 ms')