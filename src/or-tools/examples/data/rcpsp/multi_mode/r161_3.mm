************************************************************************
file with basedata            : cr161_.bas
initial value random generator: 1908746306
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  131
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       33        8       33
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   9  15
   3        3          3           5   6  15
   4        3          3           5   6  15
   5        3          3          10  12  17
   6        3          3           7   8  12
   7        3          2          13  14
   8        3          2           9  17
   9        3          2          10  14
  10        3          1          11
  11        3          1          13
  12        3          2          13  14
  13        3          1          16
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     4       7    8    8
         2     4       6    9    9
         3     6       4    5    5
  3      1     3      10    7    4
         2     5       9    7    4
         3     9       8    7    3
  4      1     4       2    9    3
         2     5       2    8    3
         3     7       2    7    3
  5      1     6       3    3    8
         2     8       3    2    7
         3    10       2    2    5
  6      1     3       5    7   10
         2     6       5    6    9
         3     8       5    5    9
  7      1     7       7    4   10
         2     8       7    3    5
         3    10       7    3    2
  8      1     2       9    4    7
         2     3       9    3    6
         3     7       9    2    5
  9      1     5       8   10    8
         2     7       5    8    6
         3     9       3    8    3
 10      1     2       8    9    9
         2     3       4    6    7
         3     4       3    3    6
 11      1     2       8    4    6
         2     6       7    4    6
         3     9       3    3    6
 12      1     5       7    4    9
         2     6       3    3    9
         3     7       1    3    8
 13      1     8       3    8    5
         2    10       2    7    5
         3    10       3    5    5
 14      1     1      10    6    4
         2     7      10    5    4
         3     8      10    4    4
 15      1     3       7    8    7
         2     5       6    8    6
         3     7       6    6    3
 16      1     7       6    5    2
         2     8       5    4    2
         3    10       5    3    2
 17      1     1       7    2    4
         2     9       7    1    2
         3    10       6    1    2
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   15   99  105
************************************************************************