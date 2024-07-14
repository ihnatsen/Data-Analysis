import numpy as np

# create array
a = np.array([1, 2, 3, 4])

# get type of cell
print(a.dtype)

# all date in array must have one dtype
# return array[str]
x = np.array([1, '2', '3', 'True', False])
print(x, x.dtype)

# get value index
print(a[1], a[2], a[3])

# set value by index
a[1] = 123
a[2] = 345
