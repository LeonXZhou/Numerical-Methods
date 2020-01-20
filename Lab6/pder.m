function [d1,d2,d3] = pder(g,x1,h1,x2,h2,x3,h3)
    switch nargin
        case 7
            d3 = (1/3)*(4*((g(x1,x2,x3+h3)-g(x1,x2,x3-h3))./(2*h3))-((g(x1,x2,x3+2*h3)-g(x1,x2,x3-2*h3))./(4*h3)));
            d2 = (1/3)*(4*((g(x1,x2+h2,x3)-g(x1,x2-h2,x3))./(2*h2))-((g(x1,x2+2*h2,x3)-g(x1,x2-2*h2,x3))./(4*h2)));
            d1 = (1/3)*(4*((g(x1+h1,x2,x3)-g(x1-h1,x2,x3))./(2*h1))-((g(x1+2*h1,x2,x3)-g(x1-2*h1,x2,x3))./(4*h1)));            
        case 5
            d2 = (1/3)*(4*((g(x1,x2+h2)-g(x1,x2-h2))./(2*h2))-((g(x1,x2+2*h2)-g(x1,x2-2*h2))./(4*h2)));
            d1 = (1/3)*(4*((g(x1+h1,x2)-g(x1-h1,x2))./(2*h1))-((g(x1+2*h1,x2)-g(x1-2*h1,x2))./(4*h1)));
        case 3
            d1 = (1/3)*(4*((g(x1+h1)-g(x1-h1))./(2*h1))-((g(x1+2*h1)-g(x1-2*h1))./(4*h1)));
        otherwise
            fprintf('you done goofed');
         
end %function