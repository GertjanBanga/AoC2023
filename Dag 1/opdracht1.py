import numpy as np
array = np.genfromtxt("Dag 1/input.txt", dtype=float)

beneden = -1
voriggetal = 0
omhoog = 0

for line in array:
    if line > voriggetal:
        beneden+=1
        voriggetal = line
    else:
        omhoog+=1
        voriggetal = line

print(beneden)
print(omhoog)
