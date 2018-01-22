classdef Data
    %DATA Summary of this class goes here
    %   Classe que faz a representação do dado tratado e seus métodos.
    
    properties
        shapes;
        cities;
    end
    
    methods
        
        % Construtor
        function obj = Data()
           obj.cities = {};
           obj.cities.count = {};
           obj.cities.cities = {};
           obj.cities.treatedCity = {};
           obj.shapes = {};
           obj.shapes.types = {};
           obj.shapes.count = {};
        end
        
        function objStruct = buildStruct(obj)
            %{
                Método para criar a estrutura dos shapes e seus tipos
            %}
            for type = obj.shapes.types'
                obj.shapes.count.(sprintf('%s', type{1})) = {};
            end
            
            objStruct = obj;
        end
        
        function objCounted = countType(obj)
            %{
                Método que faz a verificação da quantidade de
                cada um dos tipos de disco em todos os relatos.
            %}
            for filterType = obj.shapes.types'            
                obj.shapes.count.(sprintf('%s', filterType{1})) = ...
                    cellfun(@(x) sum(ismember(obj.shapes.treatedShape, x)), ...
                    {filterType}, 'un', 0);
            end
            
            objCounted = obj;
        end
        
        function objTypes = readTypes(obj)
            %{
                Método utilizado para separar o valor único de cada tipo.
            %}
           objTypes = unique(obj.shapes.treatedShape, 'Stable');
        end
        
        function objCities = readCities(obj)
            %{
                Método utilizado para separar o valor único de cada cidade.
            %}
            objCities = unique(obj.cities.treatedCity, 'Stable');
        end
        
        function objConted = countCity(obj)
            %{
                Método utilizado para realizar a contagem da quantidade de 
            %}
            for filterType = obj.cities.cities'            
                obj.cities.count.(sprintf('%s', filterType{1})) = ...
                    cellfun(@(x) sum(ismember(obj.cities.treatedCity, x)), ...
                    {filterType}, 'un', 0);
            end
            
            objConted = obj;
        end
    end
end

