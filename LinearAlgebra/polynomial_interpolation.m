% there is a built in function that returns coefficients for a polynomial
% p(x) of degree that is a best fit for the data in y

x = linspace(0, 4*pi, 10); % generate 10 points equally spaceed along a sine curve at interval [0, 4*pi]
y = cos(x);

poly_test = polyfit(x, y, 7); % fit a 7th degree polynomial to the points

x1 = linspace(0, 4*pi); % fit the to be evaluted polynomial to several places around the curve at interval [0, 4*pi]
y1 = polyval(poly_test, x1); 

figure
plot(x, y, 'o')
hold on
plot (x1, y1)
hold off


% time to make our own

% function polyfit2 = poly = polyfit2 (poly)
%     poly = ;
% end