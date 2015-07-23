function[x]=Cleaner(x1,w)
x1=double(x1);
xwhite=(x1>w);
xnormal=(x1<=w);
x=x1.*xnormal+255*xwhite;
figure
imshow(x,[0 255]);
end


