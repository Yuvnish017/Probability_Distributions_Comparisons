%verifying the approximation when Hypergeometric Distribution tends to
%Binomial Distribution
N = 1000;                %Population size of Hypergeometric Distribution
M = 50;                  %Number of objects with the required features
n = 20;                  %number of trials
x = 0:20;                %number of successes
y = hygepdf(x, N, M, n); %PMF of Hypergeometric Distribution for given parameters

p = M/N;               %probaility of success for corresponding Binomial Distribution
y1 = binopdf(x, n, p); %PMF of Binomial Distribution for given parameters

%Plotting PMFs of Hypergeometric and Binomial Distribution for comparison
figure
bar(x, [y; y1])
hold on
xlabel('radnom variable')
ylabel('probability')
title('hypergeometric and binomial distribution')
legend('hypergeometric distribution', 'binomial distribution')
hold off


%Taking the case where approximation doesn't hold
N = 100;                 %Population Size of Hypergeometric Distribution
M = 20;                  %Number of objects with reqquired features
n = 30;                  %number of trials
x = 0:20;                %number of successes
y = hygepdf(x, N, M, n); %PMF of Hypergeometric Distribution for given paremeters

p = M/N;               %probability of success for corresponding Binomial Distribution
y1 = binopdf(x, n, p); %PMF of Binomial Distribution for given parameters

%Plotting PMFs of Hypergeometric and Binomial Distribution for comparison
figure
bar(x, [y;y1])
hold on
xlabel('random variable')
ylabel('probability')
title('hypergeometric and binomial distribution')
legend('hypergeometric distribution', 'binomial distribution')
hold off