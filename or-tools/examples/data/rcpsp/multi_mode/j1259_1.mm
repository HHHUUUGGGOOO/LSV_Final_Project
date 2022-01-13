************************************************************************
file with basedata            : md123_.bas
initial value random generator: 31443
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  14
horizon                       :  89
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     12      0       12        5       12
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   6   9
   3        3          3           5   7   8
   4        3          3           5   7  11
   5        3          1          12
   6        3          3           8  10  12
   7        3          1          10
   8        3          2          11  13
   9        3          3          11  12  13
  10        3          1          13
  11        3          1          14
  12        3          1          14
  13        3          1          14
  14        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     2       7    0    9    9
         2     6       0    7    8    7
         3     6       2    0    7    8
  3      1     1       0    4    4    5
         2     1       0    6    3    6
         3     1       5    0    3    7
  4      1     1       0   10    8    9
         2     4      10    0    8    7
         3    10      10    0    8    5
  5      1     1       6    0    8    9
         2     2       0    6    8    9
         3     8       1    0    7    9
  6      1     1       8    0    5    5
         2     3       8    0    4    4
         3     8       0    2    3    4
  7      1     2       0    4    7    9
         2     3       1    0    4    9
         3     6       1    0    2    9
  8      1     4       0    6    9    8
         2     5       0    6    8    7
         3     8       0    5    6    3
  9      1     1       0    7    6   10
         2     7       0    6    5    9
         3     9       2    0    4    8
 10      1     4       9    0    5    5
         2     4       0    5    5    6
         3     7       7    0    3    3
 11      1     5       5    0    2    3
         2     7       3    0    2    2
         3     8       0    8    2    2
 12      1     1       0    9    7    8
         2     9       0    6    4    3
         3     9       7    0    5    4
 13      1     4       7    0    8    9
         2     4       0    6    8    9
         3     9       7    0    7    9
 14      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   17   19   78   92
************************************************************************
