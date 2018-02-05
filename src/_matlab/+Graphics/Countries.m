function Countries()
%COUNTRIES Summary of this function goes here
%   Função para exibição dos resultados da comparação das cidades
    
    countries = getappdata(0, 'countries');

    values = cell2mat(countries.countedCountries(:, 2)');
    
    % Gerando figura
    figure;
    
    hb = bar(values);
    hold on;
    
    for i = 1:size(values, 2)
        hbr = bar(i, values(i), 'FaceColor', [rand rand rand]);
    end
    
    legends = countries.countedCountries(:, 1)';
    legend(legends{1}, legends{2}, legends{3}, legends{4}, legends{5});
    
    hold off;
end