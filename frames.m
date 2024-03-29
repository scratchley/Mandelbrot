function frames()
path = [-1 0 1; -0.75 0.1 0.001];
numFrames = 5;
full_path = zeros(numFrames, 3);
full_path(1, :) = path(1, :);
full_path(end, :) = path(2, :);
vect = (path(2,:) - path(1,:))/(numFrames-1);
interp1([1 5], [-1 -0.75], [2 3 4])
for k=2:(numFrames-1)
    full_path(k,:) = full_path(k-1,:)+vect;
end
full_path

    function c = corners(center)
        matrix = [center(1)*ones(4,1)+[-1 1 -1 1]'*realWidth/2 center(2)*ones(4,1)+[1 1 -1 -1]'*imgHeight/2];
        c = [matrix(1, :) matrix(2, :) matrix(3, :) matrix(4, :)];
    end

% angle = atan((path(2,2)-path(1,2))/(path(2,1)-path(1,1)))
% realWidth = DEFAULT_ZOOM
% imgHeight = DEFAULT_ZOOM*HEIGHT/WIDTH
% distance = path(2,1:2) - path(1,1:2)
% n=ceil(norm(distance)/realWidth-1)*2+4
% frames = ones(n, 8);
% corners(path(1,1:2))
% frames(1, :) = corners(path(1,1:2))
% frames(end, :) = corners(path(2,1:2))
% dir = distance/abs(distance)
% for k=2:n-1
%     frames(k, :) = corners(path(1,1:2)+dir*realWidth*k)
%     frames(k+1, :) = [frames(k-2)]
%     frames(k+2, :) = []
%     k=k+3
% end


    
end