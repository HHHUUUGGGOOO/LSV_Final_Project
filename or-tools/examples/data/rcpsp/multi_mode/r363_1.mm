************************************************************************
file with basedata            : cr363_.bas
initial value random generator: 21873
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  117
RESOURCES
  - renewable                 :  3   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       13        5       13
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7   9  15
   3        3          3           5   7  14
   4        3          1           5
   5        3          3           6  10  17
   6        3          2           8  15
   7        3          3           8  10  11
   8        3          2          12  13
   9        3          1          16
  10        3          2          12  13
  11        3          3          12  13  17
  12        3          1          16
  13        3          1          16
  14        3          2          15  17
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     3       9    7    5    6    5
         2     6       9    6    5    5    5
         3     9       7    4    4    4    5
  3      1     2      10    9    7    3    9
         2     2      10    7    7    4    9
         3     8       9    3    6    1    9
  4      1     1       2    4    6    4    8
         2     2       2    3    6    4    7
         3     4       2    2    5    1    4
  5      1     1       9    9    5    7    7
         2     7       9    8    3    5    6
         3     8       8    7    3    5    6
  6      1     3       9    8   10    4    4
         2     5       9    7    9    4    3
         3     6       9    5    9    3    2
  7      1     2       4    5    4    5    5
         2     2       4    2    8    5    4
         3     2       4    6    6    5    4
  8      1     2       4    8    8    7    8
         2     6       2    5    7    4    7
         3     7       2    1    7    4    7
  9      1     5       6    5    7    5    8
         2     8       6    4    7    5    6
         3    10       5    4    6    3    4
 10      1     1       2    9    5    1    7
         2     4       2    5    4    1    6
         3     5       1    4    4    1    6
 11      1     2       5    9   10   10    7
         2     7       4    8    6    9    7
         3     9       4    8    4    9    6
 12      1     2      10    6    5    9    4
         2     7       9    3    4    8    3
         3    10       8    3    2    8    2
 13      1     1       6    4    3   10    9
         2     5       6    3    2    6    8
         3     9       2    2    2    6    8
 14      1     1       3    7    9    4    7
         2     5       3    7    7    4    7
         3     6       2    7    6    3    6
 15      1     5       9    6   10    8    7
         2     5       7    6   10    9    7
         3     8       2    3   10    5    7
 16      1     3       8    3    7    7    6
         2     8       8    2    5    4    5
         3     9       7    2    2    3    5
 17      1     2       5    6    1    6    4
         2     5       5    5    1    3    3
         3     7       4    3    1    2    2
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  N 1  N 2
   25   25   29   98  105
************************************************************************
