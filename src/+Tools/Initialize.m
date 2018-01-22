function allData  = Initialize( input_args )
%INITIALIZE Summary of this function goes here
%   Função para criar a estrutura base dos dados que serão usados.

% Criando estrutura base
allData = {};

% Lendo dataset

[fileName, pathName, ~] = uigetfile('*.csv', 'Selecione o arquivo .csv');

csv = readtable(fullfile(pathName, fileName));

allData.pure = csv;
allData.analys = Model.Data();

allData.analys = buildStruct(allData.analys);

% Salva o arquivo já com os dados carregados, no mesmo diretório em que
% está o .csv
save(fullfile(pathName, 'struct_data.mat'), 'allData'); 

% Salvando o path na memória
setappdata(0, 'pathName', pathName);
end

