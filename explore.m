function explore(a, b, x, y)
    switch nargin
        case 2
            interval = [0 0.8]
        case 4
            z0 = getMAP;
            r=50;
            min = z0(y-r, x-r)
            max = z0(y+r, x+r)
            interval = [real(min) real(max) imag(min) imag(max)]
    end
    
    setMAP(generate(interval, 300, 1000, a, b));
end

function setMAP(val)
    global MAP
    MAP = val;
end

function r = getMAP
    global MAP
    r = MAP;
end