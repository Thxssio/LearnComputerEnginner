import numpy as np

#sigmoid | --->
"""
A função de ativação sigmoid é comumente utilizada por redes neurais
com propagação positiva (Feedforward) que precisam ter como saída 
apenas números positivos, em redes neurais multicamadas e em outras
redes com sinais contínuos

"""
def sigmoid(x):
    return 1.0 / (1.0 + np.exp(-x))
def Linear(x):
  if x < 0:
    return 0.0
  elif x > 1.0:
    return 1.0
  else:
    return x

class Neuron:
  def __init__(self, w0, w1, bias):
    self.w0 = w0
    self.w1 = w1
    self.bias = bias
  def calc(self, a, b):
    s = self.w0 * a + self.w1 * b + self.bias
    z = Linear(s)
    return z
  
neur_and = Neuron(1.0, 1.0, -1)
neur_or = Neuron(1.0, 1.0, 0.0)
neur_not = Neuron(-1.0, 0.0, 1.0)

entradas = [(0,0),(0,1),(1,0), (1, 1)]

for a, b in entradas:
  print("a = ", a, "b = ", b,\
        "AND = ", neur_and.calc(a, b),\
        "OR = ", neur_or.calc(a, b),\
        "NOT = ", neur_not.calc(a, 0))