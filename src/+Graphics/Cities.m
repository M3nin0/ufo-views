function Cities()
%CITIES Summary of this function goes here
%   Função para gerar gráficos sobre informações das cidades.
    
    cities = getappdata(0, 'cities');
    values = [];
    
    % Processo que pode levar um certo tempo
    % Escolhido ser escrito desta forma por ser simples
    for cityName = unique(cities.treatedCity', 'Stable')
        values = [values cities.count.(cityName{1})]; 
    end
    
    figure;
    
    hold on;
    title('As 25 cidades com maior nível de avistamentos de OVNIs do mundo');
    ylabel('Número de avistamentos');
    for i = 1:25
        plot(i, values{i},  '-s', 'MarkerSize', 10, ...)
        'MarkerEdgeColor', 'red', ...
        'MarkerFaceColor', [rand rand rand]);
    end
    legend(cities.cities{1:25});
    hold off;
end
