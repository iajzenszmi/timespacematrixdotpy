import numpy as np

# Define the dimensions of the matrix
time_units = 10
space_units = 10

# Create a matrix of zeros with the defined dimensions
time_space_matrix = np.zeros((time_units, space_units))

# Fill the matrix with values (this is just an example, you can use your own logic)
for t in range(time_units):
    for s in range(space_units):
        # Example logic: each cell is the sum of its time and space indices
        time_space_matrix[t, s] = t + s

# Display the matrix
print(time_space_matrix)
