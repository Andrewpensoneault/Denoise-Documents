xbell=x1;
[c,d]=find(x1>200);
    e=length(c);
    f=length(d);
    for j=1:e
        for k=1:f
            g=c(j);
            h=d(k);
            xbell(g,h)=255;
        end
    end
figure
imshow(xbell,[0 255]);