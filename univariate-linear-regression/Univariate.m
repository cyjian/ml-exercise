data = load('Population_and_Profit.txt');
x = data(:,1);
y = data(:,2);
m = length(y);
%Initialize theta and temporary theta
theta = zeros(2,1);
temp_theta = zeros(2,1);
%Prepair for using gradient descent
alpha = 0.01;
for num_iteration = 1:1500
  htheta_x = theta(1) + theta(2) .* x;
  temp_theta(1) = theta(1) - alpha * (1/m) * sum(htheta_x - y);
  temp_theta(2) = theta(2) - alpha * (1/m) * sum( (htheta_x - y) .* x ); 
  theta = temp_theta;
end
%Use the newest theta to calculate hypothesis
htheta_x = theta(1) + theta(2) .* x;
%Plot a graph
figure(1);
plot(x,y,"rx");  
title('Population vs. Profit');
xlabel('Population');
ylabel('Profit');
hold on
plot(x,htheta_x);