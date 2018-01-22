function allData = Continue()
%CONTINUE Summary of this function goes here
%   Função para carregar arquivo .mat com os dados para análise

    try
        [fileName,pathName, ~] = uigetfile('*.mat', 'Selecione o arquivo já estruturado');

        allData = load(fullfile(pathName, fileName));
        allData = allData.data;

        % Salvando path na memória
        setappdata(0, 'pathName', pathName);
    catch
        errordlg('Falha ao carregar o arquivo', 'Falha');
    end
end

