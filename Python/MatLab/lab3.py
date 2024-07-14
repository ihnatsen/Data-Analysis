import numpy as np
import matplotlib.pyplot as plt


fig, ax = plt.subplots()
ax.set(xlim=(-3, 3), ylim=(0, 900))
ax.hist(np.random.normal(size=10000), bins=40)
plt.show()