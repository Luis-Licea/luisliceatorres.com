#!/usr/bin/env lua
--- @module Calculate a Fibonacci sequence number from user input.

--- Calculate a Fibonacci sequence number.
--- @param term number The sequence number to produce. Don't use large numbers as
--- the time complexity is exponential.
--- @return number
local function fibonacci(term)
    -- Base case.
    if term <= 1 then
        return term;
    end
    -- Recursive step.
    return fibonacci(term - 1) + fibonacci(term - 2);
end

if #arg >= 1 then
    local term = tonumber(arg[1]) or 0;
    local result = fibonacci(term);
    print(result);
end
