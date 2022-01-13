************************************************************************
file with basedata            : cn145_.bas
initial value random generator: 14027
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  114
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       27       14       27
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   9
   3        3          1           5
   4        3          3          12  13  14
   5        3          1           7
   6        3          2           8  10
   7        3          1           8
   8        3          3          11  12  14
   9        3          2          13  15
  10        3          3          12  13  14
  11        3          3          15  16  17
  12        3          2          15  17
  13        3          2          16  17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     5       7    6    8
         2     5       7    5    9
         3    10       5    4    4
  3      1     9       9    5   10
         2    10       4    2   10
         3    10       5    2    9
  4      1     2       8    6    8
         2     3       8    4    6
         3    10       7    3    5
  5      1     1       7    9    2
         2     4       4    6    2
         3     6       4    4    1
  6      1     2       5    4    9
         2     3       5    2    5
         3     3       4    2    7
  7      1     3       4    7    3
         2     6       2    4    2
         3     7       2    1    2
  8      1     4       7    2   10
         2     5       5    1    7
         3     8       2    1    6
  9      1     1       5    5    8
         2     2       5    4    5
         3     2       5    2    7
 10      1     3       6    6    7
         2     3       5    8    6
         3     7       3    3    6
 11      1     4       3    5    6
         2     6       2    4    6
         3     9       2    3    2
 12      1     4       6    8    6
         2     6       5    7    4
         3     8       4    4    2
 13      1     2       6    5    7
         2     2       6    6    6
         3     3       6    2    5
 14      1     4       7    4    5
         2     5       7    3    5
         3     6       6    2    5
 15      1     6       7    2    8
         2     6       8    3    7
         3    10       2    2    5
 16      1     1       9    6    8
         2     1       9    9    7
         3     7       8    1    7
 17      1     3       8    7    6
         2     5       6    7    5
         3     8       5    7    3
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   12   10   92
************************************************************************
