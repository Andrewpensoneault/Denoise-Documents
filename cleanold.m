function[xnew]=cleanold(x1)
[a,b]=size(x1);
true=x1>(quantile(x1(:),.25));
xnew=true.*x1;