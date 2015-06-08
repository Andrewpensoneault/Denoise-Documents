function[x]=cleanup(x1,c,d)
%Compairs a cleaned version of the image where pixels with grayscale values
%greater than threshold c are set to 255 to an image where the grayscale values
%greater than threshold d are set to 255, and preforms an average of each
%3x3 region
xo=clean(x1,c);
x1=clean(x1,d);
[a,b]=size(xo);
x=xo;
for i=2:a-1
    for j=2:b-1
        if all(all(x1(i-1:i+1,j-1:j+1)~=xo(i-1:i+1,j-1:j+1)))~=1
            x(i-1:i+1,j-1:j+1)=round((x(i-1:i+1,j-1:j+1)+x1(i-1:i+1,j-1:j+1))/2);
        end
    end
end
figure
imshow(x,[0 255]);
function[x]=clean(x1,w)
x1=double(x1);
xwhite=(x1>w);
xnormal=(x1<=w);
x=x1.*xnormal+255*xwhite;
figure
imshow(x,[0 255]);
end
end