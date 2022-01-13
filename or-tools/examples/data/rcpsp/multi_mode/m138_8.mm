************************************************************************
file with basedata            : cm138_.bas
initial value random generator: 45443833
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  82
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       30        1       30
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           6  10  12
   3        1          3           6  10  14
   4        1          3           5   7   9
   5        1          3           8  12  13
   6        1          2           8  13
   7        1          1          13
   8        1          1          11
   9        1          3          14  15  17
  10        1          2          11  16
  11        1          2          15  17
  12        1          2          15  16
  13        1          1          17
  14        1          1          16
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     9       2    6    8    7
  3      1     9       3    5    3    8
  4      1     9       2    2    2    7
  5      1     3       8    2    8    5
  6      1     2       6   10    9    4
  7      1     1       3    5    6   10
  8      1     5       2    3    2    6
  9      1     5       1    7    7    1
 10      1     7      10    6    9    9
 11      1     4       4    9    5    8
 12      1     2       3    8    6    4
 13      1     3       5    5    5    3
 14      1     5       8    6    1    1
 15      1     5       5    2    3    2
 16      1     4       3    4    9    7
 17      1     9       8    1   10    4
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   19   20   93   86
************************************************************************
