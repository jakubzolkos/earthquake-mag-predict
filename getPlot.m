function getPlot(data, model)
    color = lines(6);
    indices_0 = find(data(:, 3) == 0);
    indices_1 = find(data(:, 3) == 1);
    indices_2 = find(data(:, 3) == 2);
    figure
    hold on
    scatter(data(indices_0, 1), data(indices_0, 2), 50, color(1, :), 'filled');
    scatter(data(indices_1, 1), data(indices_1, 2), 50, color(2, :), 'filled');
    scatter(data(indices_2, 1), data(indices_2, 2), 50, color(3, :), 'filled');
    
    predictions = predict(model, data(:, 1:2));
    mismatched = find(predictions ~= data(:, 3));
    scatter(data(mismatched(:), 1), data(mismatched(:), 2), 150, 'x', 'LineWidth', 1.3);
    
    xlabel('Longitude');
    ylabel('Latitude');
    yticks(linspace(-180, 180, 10));
    title('Classification Model Predictions vs Real Magnitude Values');
    legend('Correct 0','Correct 1','Correct 2', 'Incorrect');
    grid on;
    hold off;
    savefig('predictionComparison.fig');
end