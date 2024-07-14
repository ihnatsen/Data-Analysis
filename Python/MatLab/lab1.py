import matplotlib.pyplot as plt
import numpy as np

np.random.seed(1)
# x = np.arange(0, 10, 2)
# _sin = np.sin(x)
# _cos = np.cos(x)

# '-'  неприрывная линия
# '--' Штриховая
# '-.' Штрихпунтированя
# ':'  Пунтированя
# plot

# lines = plt.plot(x, _sin, x, _cos)
# plt.setp(lines[0], color='r', marker='o', linestyle='--', markerfacecolor='w')
# plt.setp(lines[1], color='g', marker='H', linestyle=':', markerfacecolor='w')
# plt.show()

x = np.arange(-2*np.pi, 2*np.pi, 0.01)
y = np.sin(x)
plt.plot(x, y)
plt.fill_between(x, y, where=(y > 0), color='b', alpha=0.2)
plt.fill_between(x, y, where=(y < 0), color='r', alpha=0.2)

plt.grid()
plt.show()

