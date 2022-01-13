************************************************************************
file with basedata            : cr555_.bas
initial value random generator: 1144427431
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  126
RESOURCES
  - renewable                 :  5   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23       11       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           6  10
   3        3          3           7   8   9
   4        3          3           5   6  13
   5        3          1          12
   6        3          1           7
   7        3          3          14  16  17
   8        3          3          10  11  17
   9        3          3          11  12  13
  10        3          2          13  15
  11        3          2          14  16
  12        3          2          14  17
  13        3          1          16
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  R 3  R 4  R 5  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0    0    0
  2      1     7      10    2    4    7   10    9    2
         2     7       7    2    6    8    9    8    2
         3    10       4    1    3    6    5    7    1
  3      1     4       6    8    5    5    7    5    5
         2     4       6    8    5    6    7    9    4
         3     7       3    7    4    5    5    5    4
  4      1     5       5    6    4    6    5    5    9
         2     5       7    7    6    7    4    5    6
         3     5       6    8    5    9    8    4   10
  5      1     2       5    8    7   10    4    2    9
         2     3       5    7    7    8    3    2    8
         3     9       3    6    5    5    3    2    7
  6      1     3       4    6    4    4    7   10    6
         2     4       4    6    3    4    6    4    6
         3     8       2    6    3    4    2    4    2
  7      1     2       7    3    8    5    4    2    9
         2     3       5    3    8    5    4    2    6
         3     7       3    1    8    5    2    1    6
  8      1     3       6    9    8    8    5    2    2
         2     5       6    4    2    6    2    2    1
         3     5       6    5    3    5    1    2    2
  9      1     2       3    5    3   10    6    9    9
         2     3       2    2    3    9    5    9    8
         3    10       2    1    3    8    4    9    5
 10      1     3       7    7    3    5    5    6    9
         2     4       7    6    3    5    5    4    8
         3     9       7    6    3    4    4    3    7
 11      1     3       5    8    5    5    5   10    2
         2     8       3    8    5    4    5    7    2
         3     9       2    8    4    3    3    7    2
 12      1     4      10    7    3    3    2    4    7
         2     7       9    4    2    2    2    2    5
         3     9       9    2    2    2    1    2    5
 13      1     1       3    5   10    9    6    9    8
         2     3       2    3    9    7    5    4    6
         3     6       2    3    8    4    4    3    6
 14      1     7      10    9    6    4    4    7    8
         2     8       9    7    4    4    3    7    7
         3    10       9    6    3    4    2    6    7
 15      1     4       4    5    5   10    5    9    5
         2     5       4    5    4    9    4    7    4
         3     8       3    3    4    7    4    4    4
 16      1     3       6    4    7    7    7    5    7
         2     6       2    3    7    3    6    2    3
         3     6       4    3    6    4    7    2    3
 17      1     7       7    3    2    4    7    9    6
         2     8       7    2    1    1    6    3    5
         3     8       7    3    2    2    4    3    5
 18      1     0       0    0    0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  R 3  R 4  R 5  N 1  N 2
   22   23   20   29   23   96   96
************************************************************************
