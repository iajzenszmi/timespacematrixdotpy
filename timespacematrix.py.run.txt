(base) ian@ian-Latitude-E7440:~$ python3 timespacematrix.py
[[ 0.  1.  2.  3.  4.  5.  6.  7.  8.  9.]
 [ 1.  2.  3.  4.  5.  6.  7.  8.  9. 10.]
 [ 2.  3.  4.  5.  6.  7.  8.  9. 10. 11.]
 [ 3.  4.  5.  6.  7.  8.  9. 10. 11. 12.]
 [ 4.  5.  6.  7.  8.  9. 10. 11. 12. 13.]
 [ 5.  6.  7.  8.  9. 10. 11. 12. 13. 14.]
 [ 6.  7.  8.  9. 10. 11. 12. 13. 14. 15.]
 [ 7.  8.  9. 10. 11. 12. 13. 14. 15. 16.]
 [ 8.  9. 10. 11. 12. 13. 14. 15. 16. 17.]
 [ 9. 10. 11. 12. 13. 14. 15. 16. 17. 18.]]
(base) ian@ian-Latitude-E7440:~$ cat timespacematrix.py
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
(base) ian@ian-Latitude-E7440:~$ sloccount timespacematrix.py
Have a non-directory at the top, so creating directory top_dir
Adding /home/ian/timespacematrix.py to top_dir
Categorizing files.
Finding a working MD5 command....
Found a working MD5 command.
Computing results.


SLOC	Directory	SLOC-by-Language (Sorted)
8       top_dir         python=8


Totals grouped by language (dominant language first):
python:           8 (100.00%)




Total Physical Source Lines of Code (SLOC)                = 8
Development Effort Estimate, Person-Years (Person-Months) = 0.00 (0.02)
 (Basic COCOMO model, Person-Months = 2.4 * (KSLOC**1.05))
Schedule Estimate, Years (Months)                         = 0.04 (0.51)
 (Basic COCOMO model, Months = 2.5 * (person-months**0.38))
Estimated Average Number of Developers (Effort/Schedule)  = 0.03
Total Estimated Cost to Develop                           = $ 170
 (average salary = $56,286/year, overhead = 2.40).
SLOCCount, Copyright (C) 2001-2004 David A. Wheeler
SLOCCount is Open Source Software/Free Software, licensed under the GNU GPL.
SLOCCount comes with ABSOLUTELY NO WARRANTY, and you are welcome to
redistribute it under certain conditions as specified by the GNU GPL license;
see the documentation for details.
Please credit this data as "generated using David A. Wheeler's 'SLOCCount'."
(base) ian@ian-Latitude-E7440:~$ 
