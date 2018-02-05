import pandas as pd
from nltk.probability import FreqDist

class Process():
    '''
        Classe para processamento dos dados
    '''
    
    def __init__(self, df):
        '''
            Inicializador
                - Salva df como atributo
        '''

        self.df = df
        self.comments = df['comments']


    def most_text(self):
        '''
            Método que calcula os 50 textos mais encontrados nos comentários

            :return: Lista de frequências
            :rtype: list 
        '''
        
        frequency_temp = FreqDist(self.comments)

        return pd.DataFrame(frequency_temp.most_common(50))
