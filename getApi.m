function api = getApi(startT,varargin)
    if nargin==1
        api=['https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=',startT,'&limit=20000'];
    else
        endT=varargin{1};     
        api=['https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=',startT,'&endtime=',endT,'&limit=20000'];
    end
end