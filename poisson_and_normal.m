%verifying the approximation when Poisson Distribution tends to Normal
%Distribution
lambda = 50;             %mean of Poisson Distribution
x = 0:100;               %random variable values
y = poisspdf(x, lambda); %calculating PMF of Poisson Distribution for given parameters

mean = lambda;           %mean of corresponding Normal Distribution
sigma = sqrt(lambda);    %standard deviation of corresponding Normal Distribution
x1 = 0:0.1:100;
y1 = normpdf(x1, mean, sigma); %PMF of Normal Distribution

%Plotting PMF of Poisson Distribution and PDF of Normal Distribution for
%comparison
figure
bar(x, y, 1)
hold on
plot(x1, y1, 'LineWidth',2)
xlabel('random variable')
ylabel('probability')
title('poisson and normal distribution')
legend('poisson distribution', 'normal distribution')
hold off


%Taking the case where limiting conditions doesn't hold
lambda = 2;              %mean of Poisson Distribution
x = 0:20;                %random variable values
y = poisspdf(x, lambda); %PMF of Poisson Distribution for given parameters

mean = lambda;           %mean of corresponding Normal Distribution
sigma = sqrt(lambda);    %standard deviation of corresponding Normal Distribution
x1 = 0:0.1:20;
y1 = normpdf(x1, mean, sigma); %PDF of Normal Distribution

%Plotting PMF of Poisson Distribution and Pdf of Normal Distribution for
%comparison
figure
bar(x, y, 1)
hold on
plot(x1, y1, 'LineWidth', 2)
xlabel('random variable')
ylabel('probability')
title('poisson and normal distribution')
legend('poisson distribution', 'normal distribution')
hold off