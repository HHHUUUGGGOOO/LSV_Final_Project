************************************************************************
file with basedata            : cn313_.bas
initial value random generator: 402636466
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  127
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  3   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       21        9       21
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6   9  17
   3        3          3           6   9  10
   4        3          3           5   7  15
   5        3          3           8  11  13
   6        3          2          14  15
   7        3          2          12  13
   8        3          2          10  16
   9        3          2          15  16
  10        3          1          12
  11        3          2          12  14
  12        3          1          17
  13        3          2          14  17
  14        3          1          16
  15        3          1          18
  16        3          1          18
  17        3          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2  N 3
------------------------------------------------------------------------
  1      1     0       0    0    0    0    0
  2      1     3       6   10    4    0    0
         2     5       3    5    2    0    6
         3     5       5    6    0    0    5
  3      1     4       6    6    8    7   10
         2     5       2    2    4    0    0
         3     5       3    1    0    3    0
  4      1     2       1    2    0    7    7
         2     5       1    2    0    0    5
         3     9       1    2    0    5    0
  5      1     3       7    4    8    7    7
         2     4       6    2    1    0    7
         3     9       1    1    0    0    7
  6      1     1       9    7    3    5    0
         2     5       7    5    3    2    0
         3     9       3    1    2    0    5
  7      1     1       9    8    0    0   10
         2    10       8    7    8    0    9
         3    10       8    7    6    5    0
  8      1     1       8    3    0    0    2
         2     1       7    2    0    4    2
         3     9       7    2    0    0    2
  9      1     3       7    7    0    0    8
         2     9       5    5    5    0    0
         3    10       4    2    0    1    0
 10      1     3       7    6    7    0    0
         2     9       7    6    0    5    0
         3    10       7    4    1    0    7
 11      1     1       8    8    0    2    0
         2     1       8    6   10    0    0
         3     5       6    5    6    0    7
 12      1     1       6    7    7    0    0
         2     3       6    7    0    8    8
         3     7       3    7    4    2    8
 13      1     6       3    7    0    0    7
         2     7       2    1    0    0    6
         3     7       3    6    3    0    0
 14      1     8       9    7    4    3    7
         2     8      10    7    6    0    0
         3    10       5    7    0    0    7
 15      1     1       8   10    5    0    0
         2     4       5    9    0    0    8
         3     9       4    7    0    8    0
 16      1     2       3    4    8    0    8
         2     8       2    3    7    0    8
         3    10       2    1    0    5    7
 17      1     1       7   10    0    4    0
         2     2       4    9    6    4    7
         3     3       1    9    0    4    0
 18      1     0       0    0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2  N 3
   13   14   45   38   65
************************************************************************
