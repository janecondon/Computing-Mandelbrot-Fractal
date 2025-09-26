function l = poly_len(p, s, e)
    % This function computes the approximate length of a polynomial curve
    % y = f(x) over the interval [s,e].

    % Function takes the following inputs:
    % p: polynomial coefficients from polyfit function
    % s: starting x value (left bound)
    % e: ending x-value (right bound)

    % Function returns the following output:
    % L: total arc length of the curve y = f(x) on [s,e]

    % Uses the following formula:
    % Length = ∫ sqrt(1 + (dy/dx)^2) dx   from x = s to e


   % First, get derivative of the polynomial f(x)

    dp = polyder(p); % Derivative coefficients

    ds = @(x) sqrt(1 + (polyval(dp, x)).^2);
    l = integral(ds, s, e);
end

