function m = bisection(fn_f,s,e)
    % This function uses the bisection method to find the boundary point
    % where the indicator function fn_f changes sign. It takes a 
    % function fn_f, and bounds s and e on the initial guess and returns
    %  a point where the point sign of f changes. 

    tol = 1e-6; % Setting tolerance level to 1e-6
    max_iter = 100; % Setting max number of iterations to 100


    for k = 1:max_iter % Looping from 1-100 iterations
        m = (s + e)/2; % Calculating midpoint
        % Checking if the sign of fn_f changed between the
        %  [s, m] interval:
        if fn_f(s) * fn_f(m) < 0 % Boundary between s and m
            e = m; % Shrink the interval to [s,m]
        else % Boundary between m and e
            s = m; % Shrink interval to [m,e]
        end
        % If the interval becomes smaller than tolerance level, 
        % function stops.
        if abs(e - s) < tol
            break;
        end
    end
end