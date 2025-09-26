function fn = indicator_fn_at_x(x)
    % This function returns the indicator function at fixed x.
    fn = @(y) (fractal(x + 1i*y) > 0) * 2 - 1;
end


