************************************************************************
file with basedata            : cn137_.bas
initial value random generator: 1479661225
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  129
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  1   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23       10       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           5  11
   3        3          3           8   9  12
   4        3          2           6   7
   5        3          2           6  14
   6        3          2          15  16
   7        3          2          10  11
   8        3          2          13  17
   9        3          3          11  13  17
  10        3          3          12  13  17
  11        3          2          15  16
  12        3          1          14
  13        3          2          14  16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     5       8    8    6
         2     6       8    5    5
         3    10       7    4    4
  3      1     4       9   10    7
         2     5       6    8    6
         3    10       6    7    4
  4      1     7       9    4    8
         2     9       5    4    7
         3    10       4    4    7
  5      1     1       7    6    3
         2     4       6    6    3
         3     9       4    5    3
  6      1     6       8    5    6
         2     6       7    5    7
         3     8       6    3    5
  7      1     9       5    7    7
         2    10       3    1    6
         3    10       4    5    4
  8      1     1      10    7   10
         2     2       7    6   10
         3     5       3    4    9
  9      1     2       3    3    8
         2     3       2    3    6
         3     4       2    2    4
 10      1     1       5    7   10
         2     1       5    9    9
         3     2       5    3    7
 11      1     5       6    7    8
         2     7       3    4    7
         3     7       4    2    7
 12      1     1       7    8    8
         2     5       6    7    6
         3     7       6    6    4
 13      1     1       8    6    7
         2     7       5    4    5
         3     9       3    3    4
 14      1     2      10    9    5
         2     6      10    9    4
         3    10      10    7    4
 15      1     1       8    7    5
         2     5       6    5    5
         3     9       4    2    4
 16      1     2      10    2    6
         2     6       6    1    5
         3     9       2    1    5
 17      1     2       2    6    5
         2     4       1    5    4
         3    10       1    3    3
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1
   15   12   86
************************************************************************
