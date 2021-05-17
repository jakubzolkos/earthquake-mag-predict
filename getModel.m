function getModel(data)
    modelUpdated = fitcknn(data(:, 1:2), data(:, 3), 'NumNeighbors', 10, 'DistanceWeight', 'squaredinverse');
    if isfile('quakeModel.mat')
        delete('quakeModel.mat');
    end
    save('quakeModel.mat', 'modelUpdated');
end