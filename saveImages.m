clear; clc; close all;

%%
type="Complex-TorqueTS-Opt";
d=csvread("data\torques\"+type+".csv");
[m,n]=size(d);

fig=figure(1);
plot(d(1,1),d(1,2),'-r','LineWidth',1); hold on;
plot(d(1,1),d(1,3),'-k','LineWidth',1);
plot(d(1,1),d(1,4),'-b','LineWidth',1);
plot(d(1,1),d(1,5),'-m','LineWidth',1);
grid on; grid minor; title('Joint Torques');
xlabel('time (s)'); ylabel('torque (Nm)');
axis([0 18 -1 1]);
legend('J '+string(1:4));
saveas(fig,"data\images\torques\"+type+"\plot"+string(1)+".jpg");

k=29;

for i=k+1:k:m
    plot(d(i-k:i,1),d(i-k:i,2),'-r','LineWidth',1);
    plot(d(i-k:i,1),d(i-k:i,3),'-k','LineWidth',1);
    plot(d(i-k:i,1),d(i-k:i,4),'-b','LineWidth',1);
    plot(d(i-k:i,1),d(i-k:i,5),'-m','LineWidth',1);
    legend('J '+string(1:4));
    saveas(fig,"data\images\torques\"+type+"\plot"+string(i)+".jpg");
end
hold off;