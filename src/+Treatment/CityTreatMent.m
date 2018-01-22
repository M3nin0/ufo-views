classdef CityTreatMent
    %CLASSTREATMENT Summary of this class goes here
    %   Classe para realizar os tratamentos e filtros nos campos de cidade
    
    properties
    end
    
    methods(Static)
        function treatedCity = treatCity(cities)
            %{ 
                Método para remover campos inválidos das cidades
            %}
            
            % Estes replaces fazem o tratamento dos nomes que são inválidos
            cities(strcmp('', cities)) = [];
            treatedCity = cities;
            treatedCity = replace(treatedCity, ' ', '_');
            treatedCity = replace(treatedCity, '/', '_');
            treatedCity = replace(treatedCity, '(', '');
            treatedCity = replace(treatedCity, ')', '');
            treatedCity = replace(treatedCity, '#', '');
            treatedCity = replace(treatedCity, '&', '');
            treatedCity = replace(treatedCity, '-', '');
            treatedCity = replace(treatedCity, '.', '');
            treatedCity = replace(treatedCity, '?', 'unamed_');
            treatedCity = replace(treatedCity, ';', '');
            treatedCity = replace(treatedCity, ':', '');
            treatedCity = replace(treatedCity, '@', '');
            treatedCity = replace(treatedCity, '~', '');
            treatedCity = replace(treatedCity, '`', '');
            treatedCity = replace(treatedCity, '{', '');
            treatedCity = replace(treatedCity, '}', '');
            treatedCity = replace(treatedCity, '100_', '');
            treatedCity = replace(treatedCity, '*', '');
            treatedCity = replace(treatedCity, '+', '');
            treatedCity = replace(treatedCity, '125_', '');
            treatedCity = replace(treatedCity, '29_', '');
        end
    end
end
