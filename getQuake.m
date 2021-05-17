% This function gets the data from the API and creates a structure with
% fields given below. It is used as input for getCoordinates function.
function quake = getQuake(startT, varargin)
    if nargin==1
        api=getApi(startT);
    else
        api=getApi(startT,varargin{1});
    end
    options = weboptions('Timeout', 30);
    data = webread(api,options);
    quake = struct('Area', [], 'StateOrCountry', [], 'Coordinates', [], 'Magnitude', [], 'Duration', []);
    for i = 1:length(data.features)
        [quake(i).Area, quake(i).StateOrCountry] = getPlace(data, i);
        quake(i).Coordinates = [data.features(i).geometry.coordinates(1), data.features(i).geometry.coordinates(2)];
        fields = {'mag', 'dmin', 'Magnitude', 'Duration'};
        % Since some entries have empty values, this assigns them a value
        % of 0
        for j = 1:length(fields)/2
            if isempty(data.features(i).properties.(fields{j}))
                quake(i).(fields{j+2}) = 0;
            else
                quake(i).(fields{j+2}) = data.features(i).properties.(fields{j});
            end
        end
    end
end

