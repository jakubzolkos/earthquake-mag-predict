% This function creates a matrix containing coordinates and magnitudes of
% corresponding earthquakes from the API
function coordinates = getCoordinates(geostruct, magn_threshhold)
    index = 1;
    for i = 1:length(geostruct)
        if geostruct(i).Magnitude >= magn_threshhold
            coordinates(index, 1) = geostruct(i).Coordinates(2);
            coordinates(index, 2) = geostruct(i).Coordinates(1);
            coordinates(index, 3) = geostruct(i).Magnitude;
            index = index + 1;
        else
            continue
        end
    end
end