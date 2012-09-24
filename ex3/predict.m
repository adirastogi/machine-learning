function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


%writing a generic implementation with cell arrays used to store the theta matrices at each layer from 1 to n-1

%cell array containing the theta matrices calculated for eac layer starting from 1
this_layer = X';
theta_layer = {Theta1 Theta2};

for j=1:length(theta_layer)
	
	%add the bias feature to each sample
	this_layer  = [ones(1,m); this_layer];
	%calculate the activations for the next layer
	next_layer = sigmoid(theta_layer{j}*this_layer);
	%move to next layer
	this_layer = next_layer;
	
end
%prev now contains a cXm  matrix where c is the class label and m columns are the  hypothesis values of the traing sample i.

%calculate the class label as the row c with maximum val in each column
[t p] =  max(this_layer);
p = p';

% =========================================================================


end
