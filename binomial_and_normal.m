%Verifying the approximation where Binomial Distribution tends to Normal
%Distribution
n = 100;              %number of trials
x = 0:100;            %number of successes
p = 0.5;              %probability of success
y = binopdf(x, n, p); %calculating PMF of Binomial Distribution for given parameters

mean = n*p;                    %Mean of Normal Distibution
sigma = sqrt(n*p*(1-p));       %Standard deviation of Normal Distribution
x2 = 0:0.1:n;
y2 = normpdf(x2, mean, sigma); %Calculating PDF of Normal Distributions for given parameters

%plotting PMF of Binomial Distribution and PDF of Normal Distribution for
%comparison
figure
bar(x, y, 1)
hold on
plot(x2, y2, "r-", "LineWidth", 2)
xlabel("random variable")
ylabel("probability")
title("Binomial and Normal Distribution")
legend("Binomial Distribution", "Normal Distribution")
hold off


%Taking the case where approximation doesn't hold
n = 10;                %number of trials
x = 0:10;              %number of successes
p = 0.5;               %probability of success
y = binopdf(x, n, p);  %PMF of Binomial Distribution for given parameters

mean = n*p;                    %mean of Normal Distribution
sigma = sqrt(n*p*(1-p));       %standard deviation of Normal Distribution
x2 = 0:0.1:n;
y2 = normpdf(x2, mean, sigma); %PDF of Normal Distribution for given parameters

%plotting the PMF of Binomial Distribution and PDf of Normal Distribution
%for comparison
figure
bar(x, y, 1)
hold on
plot(x2, y2, "r-", "LineWidth", 2)
xlabel("random variable")
ylabel("probability")
title("Binomial and Normal Distribution")
legend("Binomial Distribution", "Normal Distribution")
hold off