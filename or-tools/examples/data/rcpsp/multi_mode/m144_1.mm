************************************************************************
file with basedata            : cm144_.bas
initial value random generator: 28725
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  72
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       26       12       26
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           7  10  17
   3        1          3           5  11  13
   4        1          2           6  13
   5        1          3           6  16  17
   6        1          2          10  12
   7        1          3           8   9  13
   8        1          2          12  14
   9        1          2          12  14
  10        1          1          15
  11        1          3          15  16  17
  12        1          1          15
  13        1          1          14
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
  2      1     4       2    0    6    8
  3      1     1       8    0    5    6
  4      1     3       0    5    9    6
  5      1     1       8    0    8    4
  6      1     7       4    0    2    2
  7      1     2       6    0    4    6
  8      1     1       3    0    4    6
  9      1     6       0    8    5    5
 10      1     8       6    0    4    1
 11      1     1       0    2    5    6
 12      1     9       0    1    5    1
 13      1     7       0    3    6    5
 14      1     2       0    3    8    5
 15      1     5       0    2    3    3
 16      1     6      10    0    7    9
 17      1     9      10    0    5    9
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   20   11   86   82
************************************************************************
