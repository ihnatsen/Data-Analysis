import numpy as np
import time
# time test

start_time = time.time()
lst = [*range(1_000_00)]
lst = [item*2 in lst for item in lst]
end_time = time.time()
print(f'Time finish lst: {end_time - start_time}')

start_time = time.time()
arr = np.arange(1_000_00)
arr = arr*2
end_time = time.time()
print(f'Time finish array: {end_time - start_time}')

