classdef TimeTreatMent
    %TIMETREATMENT Summary of this class goes here
    %   Classe para realizar os tratamentos dos dados de tempo
    
    properties
    end
    
    methods(Static)
        function convertedTime = convertTime(timeSeconds)
            %{
                Método para realizar a conversão de tempo do dado bruto
            %}
            convertedTime = cellfun(@str2num, ...
                timeSeconds(:,1), 'UniformOutput' , false);
        end
    end
    
end

