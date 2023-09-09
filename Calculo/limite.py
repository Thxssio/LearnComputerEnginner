from sympy.plotting import plot
from sympy import E
import matplotlib.pyplot as plt


def move_sympy_plot_to_axes(sympy_plot, plt_ax):
    backend = sympy_plot.backend(sympy_plot)
    backend.ax = plt_ax
    backend._process_series(backend.parent._series, plt_ax, backend.parent)
    backend.ax.spines['right'].set_color('none')
    backend.ax.spines['bottom'].set_position('zero')
    backend.ax.spines['top'].set_color('none')
    plt.close(backend.fig)


fig, ax = plt.subplots(figsize=(8, 6))

p1 = plot((1 + 1/x)**x, (x, 0, 50), show=False,
          label=r'$\left( 1 + \frac{1}{x} \right)^x$')
p2 = plot(E, (x, 0, 50), show=False, label='Número de Euler')

move_sympy_plot_to_axes(p1, ax)
move_sympy_plot_to_axes(p2, ax)

ax.get_lines()[1].set(color='red', linestyle='--')
ax.set_ylim(0, 3)
ax.legend(loc='lower right')

plt.show()