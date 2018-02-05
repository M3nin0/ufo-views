import pandas as pd

from tkinter.filedialog import askdirectory
from tkinter.filedialog import askopenfilename

class ToolBox():
    '''
        Classe com ferramentas para auxiliar o funcionamento do programa
    '''


    @staticmethod
    def read_data():
        ''' 
            Método para fazer a leitura dos dados

            :return: Dados carregados
            :rtype: Pandas.DataFrame
        '''

        try:
            _filename = askopenfilename()
            return pd.read_csv(_filename)
        except BaseException as e:
            print('Erro ao tentar importar os dados\n' + e)
            return pd.DataFrame()

    @staticmethod
    def save_data(df):
        '''
            Salva os dados em um caminho desejado

            :param: df (Pandas.DataFrame)
        '''

        _pathname = askdirectory()
        df.to_csv(_pathname + '/frequency.csv')
