import numpy as np
from matplotlib import pyplot as plt

def sigmoid(x):
    return 1.0 / (1.0 + np.exp(-x))
x = np.linspace (-5.0, 5.0)
y = sigmoid(x)
                  
plt.plot(x, y)

class Neuron:
    def __init__(self, input_size=5):
        self.w = np.random.random(input_size)
        self.b = np.random.random()
    def computer(self, inputs):
        s = np.dot(self.w, inputs)  + self.b
        z = sigmoid(s)
        return z
    
n = Neuron()
n.computer([1.0, 2.0, 3.0, 4.0, 5.0])