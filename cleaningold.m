function[]=cleaning(x1,n)
% finds all pixels with less light than the given percentage, and 
% converts it to white
    x1=int16(x1);
    true=x1>(quantile(x1(:),n/100));
    true=int16(true);
    xnew=-1*true.*x1;
imshow(xnew,[-255 0])
end