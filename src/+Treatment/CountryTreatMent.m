classdef CountryTreatMent
    %COUNTRYTREATMENT Summary of this class goes here
    %  Classe para tratamento dos dados das cidades
    
    properties
    end
    
    methods(Static)
        function countedCountries = countCoutry(cities)
           countTemp = cell2mat(cities);
           
           countedCountries = tabulate(countTemp);
        end
    end
end

