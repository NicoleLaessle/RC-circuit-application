RC circuit application using ode45 solver
Report the voltage after: 0.25, 0.5, and 1.0 seconds (give values to 2 decimal places)
• How long does it take for the voltage to reach 8.0 Volts? (give answer to 2 decimal places)
• Plot the voltage V(t) for the first one second. Set the range of the vertical axis from 0 to 10 V. Include
a grid, title, and axis labels.

%RC circuit application
%Define some constants
RC=0.2;
Vi=2; 
Va=10;
%Use ode45 to solve the differential equation
%Solve for voltage after .25s.
[t,V]=ode45(@(t,V) (Va-V)/RC, [0 0.25],Vi);
n=length(V);
fprintf("The voltage after 0.25s is %.2f V\n",V(n))

[t,V]=ode45(@(t,V) (Va-V)/RC, [0 0.5],Vi);
n=length(V);
fprintf("The voltage after 0.5s is %.2f V\n",V(n))

[t,V]=ode45(@(t,V) (Va-V)/RC, [0 1],Vi);
n=length(V);
fprintf("The volatage after 0.1s is %.2f V\n",V(n))

%Logical comparison
near8v=V>7.9 & V<8.1;
time8v=t(near8v);
fprintf("It will take %.2f seconds for the voltage to reach 8V.\n",time8v)
plot(t,V)
ylim([0 10])
grid on
title("The capacitor voltage in the RC circuit")
xlabel("Time(s)")
ylabel("The voltage(v)")
