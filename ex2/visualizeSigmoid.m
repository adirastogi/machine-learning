function [h] = visualizeSigmoid(theta, X)
	
	X= [ones(size(X,1),1),X(:,1:2)];
	z = X*theta;
	h = sigmoid(z');
	plot3(X(:,2),X(:,3),h,'rx');

end
