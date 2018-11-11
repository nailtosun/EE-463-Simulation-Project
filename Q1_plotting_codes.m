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

%% Question 2 plotting codes
plot(milihenry);
grid on;
hold on;
plot(tenmilihenry)
plot(onehenry)
plot(onehenrywithline)
legend('1 mH','10 mH','1 H','1H with Ls=10 mH')
title('Output voltage of single phase rectifier with different inductance values')
xlabel('Time (secs)')
ylabel('Voltage (Volts)')