function [f,g] = linear_regression(theta, X,y)
  %
  % Arguments:
  %   theta - A vector containing the parameter values to optimize.
  %   X - The examples stored in a matrix.
  %       X(i,j) is the i'th coordinate of the j'th example.
  %   y - The target value for each example.  y(j) is the target for example j.
  %
  
  m=size(X,2);
  n=size(X,1);

  % vectors should be columns for transpose to work as intended below
  if isrow(theta) theta = theta'; end
  if isrow(y) y = y'; end

  f=0;
  g=zeros(size(theta));

  %
  % TODO:  Compute the linear regression objective by looping over the examples in X.
  %        Store the objective function value in 'f'.
  %
  % TODO:  Compute the gradient of the objective with respect to theta by looping over
  %        the examples in X and adding up the gradient for each example.  Store the
  %        computed gradient in 'g'.
  
%%% YOUR CODE HERE %%%

%%% J(theta) %%%
% equation for cost function: 
% J(theta) = 0.5*sum(theta'*X(:,j)-y(j))

% loop over examples
for j = 1:size(X,2)
  xj = X(:,j);
  f  = f+ ( theta'*xj - y(j) )^2;
  g  = g+ xj*( theta'*xj - y(j) );
end
f = 0.5*f; 
