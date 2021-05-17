function getAppobject(object, varargin)
    delete(object);
    app.EarthquakeMapPanel = uipanel(app.RightPanel);
    app.EarthquakeMapPanel.TitlePosition = 'centertop';
    app.EarthquakeMapPanel.Title = 'Earthquake Map';
    app.EarthquakeMapPanel.FontWeight = 'bold';
    app.EarthquakeMapPanel.FontSize = 16;
    app.EarthquakeMapPanel.Position = [6 7 826 627];
end