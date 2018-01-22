classdef ShapeTreatMent
    %SHAPETREATMENT Summary of this class goes here
    %   Classe para tratamento dos shapes UFO
    
    properties
    end
    
    methods(Static)
        function treatedShape = treatShape(shapes)
            %{
                Método para remover campos inválidos dos shapes
            %}
            shapes(strcmp('', shapes)) = [];
            treatedShape = shapes;
        end
    end
end
