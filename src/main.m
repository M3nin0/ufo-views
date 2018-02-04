%{
    Arquivo principal, responsável em chamar os demais métodos e análises.
%}

clear all;

choice = questdlg('Você já tem o dado estruturado ?', ...
                    'Sobre os dados', ... 
                    'Sim','Não', '');
switch choice
    case 'Sim'
        data = Tools.Continue();
    case 'Não'
        data = Tools.Initialize();
        
        % Filtra os dados para remover campos invalidos
        data.analys.shapes.treatedShape = ...
            Treatment.ShapeTreatMent.treatShape(data.pure.shape);
        data.analys.cities.treatedCity = ...
            Treatment.CityTreatMent.treatCity(data.pure.city);
        
        % Adicionando os tipos aos dados
        data.analys.shapes.types = data.analys.readTypes();
        data.analys.cities.cities = data.analys.readCities();  
        
        % Realizando contagem dos tipos
        data.analys = data.analys.countType();
        data.analys = data.analys.countCity();
        
        % Tratando os dados de tempo
        data.analys.time.treatedTime = Treatment.TimeTreatMent.convertTime(...
                                data.pure.duration_seconds_);
        data.analys.time.mean = data.analys.meanTime();
        
        % Tratando os dados das cidades
        data.analys.countries.countedCountries = Treatment. ...
                CountryTreatMent.countCoutry(...
                    data.pure.country);
        
end
                                                                                       
% Salvando os dados na memória
% Evita dados sendo replicados e ocupando memória
setappdata(0, 'shapes', data.analys.shapes);
setappdata(0, 'cities', data.analys.cities);
setappdata(0, 'countries', data.analys.countries);

% Gerando gráficos
Graphics.Types();
Graphics.Cities();
Graphics.Countries();

% Salvando os dados processados
pathName = getappdata(0, 'pathName');
% Criando arquivo atualizado de struct_data
save(fullfile(pathName, 'struct_data.mat'), 'data');
% Arquivo com todos os resultados obtidos
save(fullfile(pathName, 'struct_data_final.mat'), 'data');

