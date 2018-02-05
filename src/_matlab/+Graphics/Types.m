function Types()
%TYPES Summary of this function goes here
%   Função para gerar gráficos dos tipos de shapes

    % Recuperando dados da memória
    shapes = getappdata(0, 'shapes');
    values = [];
    types = shapes.types';

    for i = 1:length(fieldnames(shapes.count))
        values = [ values shapes.count.(shapes.types{i}){1} ];
    end

    figure;

    hold on;
    title('Formatos de naves e suas quantidades');
    ylabel('Quantidade reportada no dataset');
    for i = 1:size(values, 2)
        plot(i, values(i),  '-s', 'MarkerSize', 10, ...)
        'MarkerEdgeColor', 'red', ...
        'MarkerFaceColor', [rand rand rand]);
    end
    legend(types);
    hold off;
end
