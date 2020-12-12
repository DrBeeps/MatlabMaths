% polyval() returns the value of a polynomial of degree n evaluated at x
% the input argument p is a vector of length n+1 whose elements are
% coefficients in descending powers of the polynomial to be evaluated

poly = [4 0 0 -3 2 33]; % create a vector that represents the polynomial p(x) = 4x^5 - 3x^2 + 2x + 33

% evaluating poly by hand:
% 4*2^5 - 3*2^2 + 2*2 + 33
% 128 - 12 + 4 + 33
% 153 yep polyval() works


polyout = polyval(poly, 2); % evaluate polynomial poly at x = 2

disp(polyout)

% function polyval2 poly = polyval2(poly)
%     poly = 
% end
doc polyval
