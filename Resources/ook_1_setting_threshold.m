y1 = zeros(size(x2));

for i = 1:length(x2)
    if x2(i) > 0.25
        y1(i) = 1;
    else
        y1(i) = 0;
    end
end

% Plot the wave
plot(x_axis,y1);
ylim([-0.1 1.1]);
%xlim([-0.0012 0.009]);
xlabel('x2');
ylabel('Wave value');
title('Wave Plot');

filename = 'signal_twoip.csv';
writematrix(y1, filename);