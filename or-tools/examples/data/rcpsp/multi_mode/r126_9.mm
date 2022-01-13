************************************************************************
file with basedata            : cr126_.bas
initial value random generator: 856510274
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  134
RESOURCES
  - renewable                 :  1   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       23        8       23
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7   8   9
   3        3          3           7   8  15
   4        3          3           5   6  14
   5        3          3          10  11  12
   6        3          3           8  10  11
   7        3          1          11
   8        3          2          12  13
   9        3          1          13
  10        3          3          15  16  17
  11        3          1          17
  12        3          1          16
  13        3          2          16  17
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0
  2      1     5       0    0    5
         2     7       0    6    0
         3     7       4    0    3
  3      1     2       6    5    0
         2     3       5    5    0
         3     9       4    0    8
  4      1     6       9    0    3
         2     8       0    4    0
         3     9       7    2    0
  5      1     1       0    6    0
         2     2       0    1    0
         3     4       0    0    4
  6      1     1       9    8    0
         2     3       4    0    7
         3     7       0    7    0
  7      1     2       8    0    3
         2     2       0    0    5
         3     6       0    5    0
  8      1     6       6    0    7
         2     7       0    3    0
         3     9       0    0    4
  9      1     2       6    5    0
         2     6       0    4    0
         3    10       0    2    0
 10      1     6       6    8    0
         2     9       6    7    0
         3    10       4    0   10
 11      1     6       9    0    6
         2     7       0    7    0
         3    10       0    0    6
 12      1     2       0    7    0
         2     4       5    4    0
         3     7       0    3    0
 13      1     2       0    9    0
         2     4      10    7    0
         3    10       2    5    0
 14      1     1       5    7    0
         2     9       4    0    4
         3    10       0    5    0
 15      1     8       8    7    0
         2     9       8    0    9
         3    10       8    0    8
 16      1     8       0    5    0
         2     9       0    0    6
         3     9       0    4    0
 17      1     5       0    7    0
         2     7       9    0    4
         3     7       0    6    0
 18      1     0       0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  N 1  N 2
   20   99   78
************************************************************************
