import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec
import numpy as np

np.random.seed(0)
# value for x
X = np.arange(-5, 5, 0.01)

# graf one
_cos = np.cos(X)

# graf two
_sin = np.sin(X)

# graf three
parabola = X * X

# grag four
line = [1] * len(X)
# ax1 = plt.subplot(2, 3, 1)
# ax2 = plt.subplot(2, 3, 2)
# ax3 = plt.subplot(2, 3, 3)
# ax4 = plt.subplot(2, 1, 2)
# ax1.plot(X, _cos)
# ax2.plot(X, _sin)
# ax3.plot(X, parabola)
# ax4.plot(X, line)
# plt.show()


# fig, ax = plt.subplots(2, 2)
# ax[0, 0].plot(X, parabola)
# ax[0, 1].plot(X, _cos)
# ax[1, 0].plot(X, _sin)
# ax[1, 1].plot(X, line)
# fig.set_size_inches(10, 10)
# fig.set_facecolor('#8c0007')
# new_fig = plt.figure(figsize=(10, 5))
# plt.show()

