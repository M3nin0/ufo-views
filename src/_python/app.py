from utils.process import Process
from utils.toolbox import ToolBox

data = ToolBox.read_data()

process = Process(data)
frequency_table = process.most_text()
ToolBox.save_data(frequency_table)
