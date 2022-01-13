************************************************************************
file with basedata            : cr140_.bas
initial value random generator: 1085449696
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  136
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       18        4       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           9  10  13
   3        3          3           5   9  16
   4        3          3           8  13  15
   5        3          2           6   7
   6        3          3          10  11  12
   7        3          3          10  11  12
   8        3          2          16  17
   9        3          1          11
  10        3          2          14  15
  11        3          2          14  15
  12        3          1          13
  13        3          1          14
  14        3          1          17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     3       8    7    8
         2     6       5    6    6
         3     8       5    6    5
  3      1     2       8    7    7
         2     4       6    7    5
         3     9       5    6    4
  4      1     9       6   10    7
         2     9       7    8    6
         3    10       4    6    4
  5      1     1       4    5    8
         2     4       4    4    8
         3     9       2    4    7
  6      1     1       4    3    3
         2     4       4    2    3
         3     5       3    1    1
  7      1     5       7    7    7
         2     6       5    4    4
         3     9       4    4    4
  8      1     2       6    5    9
         2     5       5    4    6
         3    10       5    3    3
  9      1     1       1    6    7
         2     2       1    6    6
         3    10       1    6    5
 10      1     1       8    6    4
         2     3       7    6    2
         3     5       6    2    2
 11      1     1       7    7    2
         2     6       6    7    2
         3    10       3    6    2
 12      1     6       8    6    7
         2     6       8    7    6
         3     8       3    4    3
 13      1     1      10    5    8
         2     3       9    4    8
         3     8       9    3    7
 14      1     1       1    8    8
         2     4       1    5    6
         3     5       1    3    3
 15      1     1       2    8    4
         2     8       2    8    3
         3    10       2    6    3
 16      1     6       2    8    8
         2     6       3    8    7
         3    10       1    8    6
 17      1     2       9    3    7
         2     3       9    3    5
         3    10       8    3    4
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   30   79   73
************************************************************************
