# Naive-Bayes
Text Classification using Naive Bayes 
The MATLAB code classifies articles to the two magazines- The Onion and The Economist. The code uses MAP (Maximum Apriori estimates)
to classify the articles. 
Bayes Rule : P(Y=yi|X)∝P(X|Y=yi)∗P(Y=yi)
The MAP estimates are derived using closed form solution which maximizes the posterior probability - P(X|Y=yi)
The posterior is modelled as a bernoulli distribution with a Beta(1.9,1.001) prior.  
