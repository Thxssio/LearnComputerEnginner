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

class Perceptron():
  def __init__ (self, n_inputs= 4, n_hidden= 8, n_outputs = 1):
    self.w_ih = np.random.random((n_hidden, n_inputs))
    self.w_ho = np.random.random((n_outputs, n_hidden))
    self.b_hid = np.random.random((n_hidden))
    self.b_out = np.random.random((n_outputs))
  def computer(self, inputs):
    self.s_hidden = np.dot(self.w_ih, inputs) + self.b_hid
    self.z_hidden = sigmoid(self.s_hidden)
    self.s_out = np.dot(self.w_ho, self.z_hidden) + self.b_out
    self.z_out =  sigmoid(self.s_out)
    return self.s_out

p = Perceptron()
p.computer([1.0, 2.0, 3.0, 4.0])