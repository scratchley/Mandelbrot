function animate()
    center = [0.350907738170318 0.350907738170319...
                0.384318829808752 0.384318829808753];
    figure
    a=subplot(1,2,1);
    b=subplot(1,2,2);
    
    rate = 7;
    
    bounds = center + 0.8*[-1 1 -1 1];
    
    
    for k=1:300
        z0 = generate(bounds, 300, 5000, a, b);
        drawnow;
        x_scale = (bounds(2)-bounds(1))/rate;
        y_scale = (bounds(4)-bounds(3))/rate;
        bounds = bounds + [x_scale -x_scale y_scale -y_scale];
        if length(find(diff(abs(z0))>eps(abs(z0(end))))) <= 0
            disp('Max floating point tolarence reached')
            %break
        end
    end
end


%[0.367613283989535 0.367613283989536]