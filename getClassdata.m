% This function is used to prepare a training and test datasets for the classification
% algorithm.
function dataset = getClassdata(data)
    % Set the value of all magnitudes to 1
    dataset = data;
    for i = 1:length(dataset(:, 3))
        if ((dataset(i, 3) > 0) && (dataset(i, 3) < 2))
            dataset(i, 3) = 0;
        elseif ((dataset(i, 3) >= 2) && (dataset(i, 3) < 4))
            dataset(i, 3) = 1;
        elseif dataset(i, 3) >= 4
            dataset(i, 3) = 2;
        end
    end
    
    % Add additional coordinates for which the earthquakes didn't happen
    % and set the categorical value to 0
    % randCoordinates = [180*rand(3000, 1)-90 360*rand(3000, 1)-180 zeros(3000, 1)];
    % Remove rows containing the same coordinates from the final dataset
    %temp = [data; randCoordinates];
    %[~,~,idx] = unique(temp(:, 1:2),'rows');
    %tally = accumarray(idx,(1:numel(idx)).',[],@(x){idx(x)});
    %dataset = temp(cellfun(@(x)numel(x)==1,tally),:);
end