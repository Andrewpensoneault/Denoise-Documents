
[a,b]=size(x1);
x=x1;
tic
for i=1
    for j=1
        if x1(i,j)<quantile(x(:),.5)
            if x1(i,j)<quantile(x(:),.25)
                x1(i,j)=0;
            else
                if randi([0,1])==0
                    x1(i,j)=0;
                end
            end
        end
    end
end
toc

                
