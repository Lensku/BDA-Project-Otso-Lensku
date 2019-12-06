// Comparison of k groups with common variance (ANOVA)
// Modified version accessed on 06/12/19 
// from http://avehtari.github.io/BDA_R_demos/demos_rstan/rstan_demo.html#8_comparison_of_k_groups_with_hierarchical_models

data {
  int<lower=0> N; // number of data points
  int<lower=0> K; // number of groups
  int<lower=1,upper=K> x[N]; // group indicator
  vector[N] y; //
}

parameters {
  vector[K] mu;        // group means
  real<lower=0> sigma; // common std
}

model {
  y ~ normal(mu[x], sigma);
}