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

### 25 cidades com mais relatos de ONVIs

![citys](/static/images/cities-of-ovnis.jpg)

### Os tipos de OVNIs mais avistados

![types](/static/images/ovni-tipos.jpg)

Caso seja necessário realizar edições dentro do diretório <code>/static/images</code> há os arquivos .fig para edição.

## Questões sendo análisadas

- [X] Quais as cidades que mais ocorrer casos de OVNI;
- [ ] Os estados em que mais ocorrer os casos;
- [ ] Os paises em que mais houveram casos;
- [X] Formatos mais vistos;
- [ ] Tempo médio de duração dos avistamentos;
- [ ] Datas em que houveram mais publicações de relatos.
