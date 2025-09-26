function it = fractal(c)
    % This function takes complex point c and 
    % returns the number of iterations until divergence.

    max_it = 100; % Setting max number of iterations to 100
    z = 0; % Initializing iterated variable
    it = 0; % Initializing number of iterations variable

    while abs(z) <= 2 && it < max_it % Finding points belonging to the set
        z = z^2 + c; % Equation to generate Mandelbrot set
        it = it + 1; % Increasing iterations by 1
    end

    % If point is inside Mandelbrot set (no divergence),
    %  function returns 0 
    if it == max_it % If we reach max iterations
        it = 0; % Number of iterations = 0
    end
end