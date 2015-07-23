function[xbell]=cleaning(x1,lo)
% finds all pixels with less light than the given percentage, and 
% converts it to white 
x1=double(x1);
[a,b]=size(x1);
onemat=ones(a,b);
xbell=x1;
for i=1:lo
    xnew=xbell;
    xold=xbell;
    while isequal((xnew~=255),(xold~=255))
        xold=xnew;
        xnew=xnew+onemat;
    end
    [c,d]=find(xnew==255);
    e=length(c);
    f=length(d);
    for j=1:e
        for k=1:f
            g=c(j);
            h=d(k);
            xbell(g,h)=xnew(g,h);
        end
    end
end
figure
imshow(xbell,[0 255]);
end
