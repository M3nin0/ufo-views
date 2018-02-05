# UFO View

Análise do dataset [UFO Sightings](https://www.kaggle.com/NUFORC/ufo-sightings)

## Objetivo

Desenvolver uma rotina completa que seja capaz de responder todas as questões que estão sendo análisadas.

## Estrutura de dados

Para que o processo fique mais fácil para a rotina, foi criado uma estrutura de dados própria, a qual tenta comportar todas as informações da melhor forma possível.
Está sendo utilizado <code>structs</code> e <code>classes</code> do matlab para gerar as estruturas. A estrutura tem o seguinte padrão.

- Dados
    - Dados puros;
        - Datatime;
        - City;
        - State;
        - Country;
        - Shape;
        - Duration (Seconds);
        - Duration (Hours/min);
        - Comments;
        - Latitude;
        - Longitude.
    - Dados tratados;
        - Shapes;
            - Types;
            - Count;
            - Trated Shapes.
        - Cities
            - Types;
            - Count;
            - Trated Cities.

Este formato pode ser encontrado dentro dos arquivos de dados .mat. No diretório <code>/data/</code>.
 Caso seja necessário, a estrutura de dados poderá ser recriada ao iniciar o programa.

## Resultados obtidos

Já há informações que foram obtidos com as análises, essas podem ser vistas abaixo.

### 25 cidades com mais relatos de OVNIs

![citys](/static/images/cities-of-ovnis.jpg)

### Os tipos de OVNIs mais avistados

![types](/static/images/ovni-tipos.jpg)

Caso seja necessário realizar edições dentro do diretório <code>/static/images</code> há os arquivos .fig para edição.

### Os 5 países com maior nível de avistamentos

![countries](/static/images/country-of-ovnis.jpg)

### Tempo médio de avistamento de todos os casos

O tempo médio de avistamento é em torno de: <code>2.5048 horas</code>

Esta informação pode apresentar inconsistência pois durante a análise levei em consideração todos os dados, até mesmo aqueles em que o tempo de avistamento eram gigantes, como exemplo, um avistamento de 3 dias.

### Porcentagem de avistamento dentre os anos (1980 até 2014)

| ANO  | QTD  |   %   |
|------|------|-------|
| 1980 | 238  | 0.30% |
| 1981 | 163  | 0.20% |
| 1982 | 180  | 0.23% |
| 1983 | 148  | 0.19% |
| 1984 | 185  | 0.23% |
| 1985 | 215  | 0.27% |
| 1986 | 188  | 0.24% |
| 1987 | 223  | 0.28% |
| 1988 | 239  | 0.30% |
| 1989 | 243  | 0.31% |
| 1990 | 257  | 0.32% |
| 1991 | 234  | 0.29% |
| 1992 | 246  | 0.31% |
| 1993 | 300  | 0.38% |
| 1994 | 417  | 0.52% |
| 1995 | 1066 | 1.34% |
| 1996 | 826  | 1.04% |
| 1997 | 1242 | 1.56% |
| 1998 | 1739 | 2.18% |
| 1999 | 2788 | 3.50% |
| 2000 | 2752 | 3.46% |
| 2001 | 3109 | 3.90% |
| 2002 | 3211 | 4.03% |
| 2003 | 3935 | 4.94% |
| 2004 | 4220 | 5.30% |
| 2005 | 4039 | 5.07% |
| 2006 | 3682 | 4.62% |
| 2007 | 4243 | 5.33% |
| 2008 | 4777 | 6.00% |
| 2009 | 4508 | 5.66% |
| 2010 | 4258 | 5.35% |
| 2011 | 5077 | 6.38% |
| 2012 | 7308 | 9.18% |
| 2013 | 6992 | 8.78% |
| 2014 | 2252 | 2.83% |


OBS: A tabela foi gerada a partir do resultado do código matlab juntamente ao: [Markdown Tables Generator](https://www.tablesgenerator.com/markdown_tables) 

### Textos mais ditos nos comentários de avistamento

Estes podem ser encontrados dentro do diretório <code>data</code>.

## Questões sendo análisadas

- [X] Quais as cidades que mais ocorrer casos de OVNI;
- [X] Palavras mais citadas nos relatos;
- [X] Os países em que mais houveram casos;
- [X] Formatos mais vistos;
- [X] Tempo médio de duração dos avistamentos;
- [X] Anos em que houveram mais publicações de relatos.
