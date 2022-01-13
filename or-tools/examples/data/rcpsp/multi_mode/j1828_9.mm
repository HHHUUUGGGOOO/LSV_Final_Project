************************************************************************
file with basedata            : md284_.bas
initial value random generator: 771794586
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  20
horizon                       :  146
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     18      0       14       14       14
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           7  11
   3        3          3           8   9  17
   4        3          3           5   6  14
   5        3          2           8  12
   6        3          3          13  16  17
   7        3          2          10  15
   8        3          2          18  19
   9        3          2          13  15
  10        3          2          14  16
  11        3          2          13  14
  12        3          1          15
  13        3          1          19
  14        3          2          17  18
  15        3          1          16
  16        3          2          18  19
  17        3          1          20
  18        3          1          20
  19        3          1          20
  20        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       0    9    0    7
         2     4       0    7    4    0
         3     7       0    4    3    0
  3      1     3       0    9    4    0
         2     8       0    7    0    8
         3     9       3    0    4    0
  4      1     1       4    0    0    6
         2     5       0    4    9    0
         3     5       0    3    0    4
  5      1     1       6    0    5    0
         2     3       5    0    0    4
         3     9       0    9    0    3
  6      1     3       0    6    2    0
         2     8       7    0    2    0
         3    10       0    6    1    0
  7      1     4       8    0    0    7
         2     6       0    7    0    6
         3     8       8    0    8    0
  8      1     5       0    5    0    2
         2     6       0    5    4    0
         3     8       0    3    4    0
  9      1     6       4    0    4    0
         2     7       0    3    0    7
         3     9       0    3    3    0
 10      1     2       9    0    6    0
         2     4       0    3    4    0
         3     5       5    0    0    7
 11      1     7       3    0    0   10
         2     8       0    7    0    7
         3    10       2    0    0    2
 12      1     1       0    5    0    5
         2     2       0    3    7    0
         3     9       8    0    6    0
 13      1     1       8    0    6    0
         2     7       0   10    6    0
         3     8       0    9    0    4
 14      1     1       0    3    0    6
         2     3       5    0    8    0
         3     9       5    0    7    0
 15      1     2       0    4    5    0
         2     7       7    0    0    5
         3     9       0    3    0    4
 16      1     1      10    0    5    0
         2     4       3    0    2    0
         3     8       0   10    0    3
 17      1     1       7    0    7    0
         2    10       0    7    7    0
         3    10       5    0    0    4
 18      1     1       0    7    0    6
         2     4       0    2    1    0
         3     4       6    0    0    5
 19      1     2       0    6    8    0
         2     5       9    0    0   10
         3     9       9    0    6    0
 20      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   30   32   93  101
************************************************************************
