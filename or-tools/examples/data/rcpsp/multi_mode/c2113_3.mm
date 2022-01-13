************************************************************************
file with basedata            : c2113_.bas
initial value random generator: 1216411676
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  144
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21        5       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   7
   3        3          3           5   6  16
   4        3          3          10  11  16
   5        3          3           9  12  14
   6        3          3           9  10  12
   7        3          3           8   9  16
   8        3          3          10  11  12
   9        3          2          15  17
  10        3          3          13  14  17
  11        3          3          13  14  17
  12        3          1          13
  13        3          1          15
  14        3          1          15
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       7    5    0    8
         2     1       7    4    6    0
         3     6       7    4    0   10
  3      1     4       8    8   10    0
         2     7       7    5    0    8
         3    10       7    4    8    0
  4      1     2       9    2    0    5
         2     6       8    1    0    5
         3    10       7    1    0    4
  5      1     1       7    9    7    0
         2     2       5    9    0    2
         3     9       4    8    6    0
  6      1     5       5    3    7    0
         2     5       5    4    5    0
         3    10       2    3    5    0
  7      1     2       3    9    0    6
         2     9       3    6    0    3
         3     9       2    8    6    0
  8      1     7       5   10    6    0
         2     9       5    6    2    0
         3     9       5    8    0    9
  9      1     2       7    8    0    8
         2     7       5    7    0    6
         3    10       4    7    0    5
 10      1     5       8    4   10    0
         2     8       7    3    0    1
         3     9       6    3    8    0
 11      1     5       4    9    9    0
         2     7       2    8    0    7
         3     9       1    8    0    5
 12      1     1       7    4    7    0
         2     4       5    4    0    1
         3     8       4    4    2    0
 13      1     4       4    4    0    8
         2     4       5    4    0    6
         3    10       4    2    0    3
 14      1     3       9    7    8    0
         2     8       6    5    0    7
         3    10       4    4    5    0
 15      1     2       5    7    0    8
         2     3       3    6    0    7
         3    10       3    5    0    6
 16      1     1       9    9    9    0
         2     3       7    8    4    0
         3     7       4    7    0    8
 17      1     2       2   10    0    4
         2     8       2    7    6    0
         3     8       2    9    0    3
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   12   14   48   55
************************************************************************
