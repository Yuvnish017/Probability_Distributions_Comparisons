%Verifying the approximation where Binomial Distribution tends to Poisson
%Distribution
n = 20;                 %number of trials
p = 0.05;               %probability of success
x = 0:n;                %number of successes
y1 = binopdf(x, n, p);  %Calculating the PMF of Binomial Distribution with given parameters

mean = n*p;             %corresponding mean of Poisson Distribution 
y2 = poisspdf(x, mean); %Calculating the PMF of Poisson Distribution

%Plotting the PMFs of Binomial and Poisson Distribution for comparison
figure
bar(x, [y1; y2]);
xlabel("Random Variable")
ylabel("Probability")
title("Binomial and Poisson Distributions")
legend('Binomial Distribution', 'Poisson Distribution')


%Taking the case where approxiamtion doesn't hold
n = 20;                 %number of trials
p = 0.3;                %proabability of success
x = 0:n;                %number of successes
y1 = binopdf(x, n, p);  %Calculating the PMF of Binomial Distribution for given parameters

mean = n*p;             %mean of corresponding Poisson Distribution
y2 = poisspdf(x, mean); %PMF of Poisson Distribution

%Plotting PMFs of Binomial and Poisson Distribution for comparison
figure
bar(x, [y1; y2]);
xlabel("Random Variable")
ylabel("Probability")
title("Binomial and Poisson Distributions")
legend('Binomial Distribution', 'Poisson Distribution')