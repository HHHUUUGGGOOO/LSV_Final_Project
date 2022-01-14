************************************************************************
file with basedata            : me19_.bas
initial value random generator: 35804701
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  110
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  0   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       18        8       18
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           8  13  15
   3        3          1          14
   4        3          3           5   6   7
   5        3          2          10  14
   6        3          3           8   9  10
   7        3          2           9  10
   8        3          1          14
   9        3          2          11  12
  10        3          2          11  12
  11        3          2          13  15
  12        3          2          13  15
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2
------------------------------------------------------------------------
  1      1     0       0    0
  2      1     3       9    0
         2     7       4    0
         3     8       0    5
  3      1     1       0   10
         2     8       4    0
         3     9       0    4
  4      1     1       7    0
         2     1       0   10
         3     3       5    0
  5      1     4       0    8
         2     5       0    6
         3     7       3    0
  6      1     4       7    0
         2     5       0    3
         3     6       5    0
  7      1     6       0    9
         2     6       3    0
         3    10       0    7
  8      1     8       0    4
         2    10       7    0
         3    10       0    3
  9      1     3       6    0
         2     4       0    9
         3     8       5    0
 10      1     3       9    0
         2     5       0   10
         3     9       5    0
 11      1     4       2    0
         2     5       0    8
         3     8       0    7
 12      1     3       0    9
         2     9       1    0
         3     9       0    2
 13      1     1       7    0
         2     3       6    0
         3     6       0    3
 14      1     5       4    0
         2     6       0    4
         3    10       3    0
 15      1     4       0    8
         2     5       4    0
         3     7       0    5
 16      1     0       0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2
   20   19
************************************************************************