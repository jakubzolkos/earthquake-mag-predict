% This function transforms the name of the earthquake location into a
% matrix containing two columns: first for city / area, second one for
% state (USA only) / country. This works for almost every case. For a
% handful of others, location is stored in the first column and the second
% is left empty. This function currently serves no purpose.
function [town, state] = getPlace(data, i)
    line = data.features(i).properties.place;
    if ~isletter(line(1))
        place = split(line, ', ');
        town_temp = split(place{1}, 'of ');
        town = town_temp{2};
        state = place{2};
    else
        town = line;
        state = [];
    end
end
