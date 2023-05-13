n=(2000/50 - 1);

y2 = zeros([n 1]);
count = 0;
period = 0;
j=1;
for i = 1:length(y1)
    if period == 50
        
        if count>20
            y2(j)=1;
            period = 0;
            count = 0;
            j=j+1;
        else
            y2(j)=0;
            period = 0;
            j=j+1;
        end
    else
        if y1(i)==1
            count = count + 1;
            period = period + 1;
        else
            period = period + 1;
        end
    end

end

bar(y2);

filename = 'signal_twoip_final.csv';
writematrix(y2, filename);
