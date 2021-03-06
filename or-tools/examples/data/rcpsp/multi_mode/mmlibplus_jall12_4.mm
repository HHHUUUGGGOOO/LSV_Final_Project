jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 6 7 8 9 14 
2	3	8		25 24 21 20 19 16 12 11 
3	3	9		25 23 21 18 17 16 15 13 10 
4	3	10		34 33 32 30 29 28 26 24 23 22 
5	3	7		33 29 28 26 24 18 17 
6	3	7		40 33 32 29 28 23 19 
7	3	4		33 23 21 20 
8	3	3		31 30 12 
9	3	7		40 39 33 32 29 28 20 
10	3	6		40 33 28 27 26 20 
11	3	5		33 32 23 22 18 
12	3	8		40 39 34 33 32 29 28 23 
13	3	6		40 38 32 28 27 20 
14	3	5		40 33 28 27 20 
15	3	6		51 40 39 30 28 24 
16	3	9		51 50 48 39 38 34 32 31 28 
17	3	7		50 40 34 32 31 30 27 
18	3	7		51 50 38 37 34 30 27 
19	3	6		51 47 38 31 30 26 
20	3	8		51 50 46 37 35 34 31 30 
21	3	7		51 50 48 47 40 28 26 
22	3	13		51 50 49 48 47 45 44 43 40 39 38 37 36 
23	3	7		51 50 43 38 37 36 27 
24	3	5		50 38 37 31 27 
25	3	10		50 49 48 47 45 44 43 42 39 36 
26	3	7		46 43 42 39 37 36 35 
27	3	7		49 48 47 46 42 41 35 
28	3	6		46 45 44 43 42 37 
29	3	5		46 45 43 38 36 
30	3	5		49 48 43 42 36 
31	3	5		49 45 44 43 36 
32	3	4		46 43 42 37 
33	3	3		43 38 37 
34	3	4		47 44 42 41 
35	3	2		45 44 
36	3	1		41 
37	3	1		41 
38	3	1		42 
39	3	1		41 
40	3	1		46 
41	3	1		52 
42	3	1		52 
43	3	1		52 
44	3	1		52 
45	3	1		52 
46	3	1		52 
47	3	1		52 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	5	10	6	2	4	
	2	6	10	6	1	3	
	3	8	10	6	1	2	
3	1	4	8	8	5	1	
	2	6	7	6	5	2	
	3	9	7	6	5	1	
4	1	1	8	7	4	7	
	2	3	4	7	4	6	
	3	8	2	4	4	4	
5	1	1	6	7	7	2	
	2	5	3	7	6	2	
	3	7	3	7	3	2	
6	1	2	6	5	8	7	
	2	8	4	5	5	3	
	3	9	2	3	3	2	
7	1	1	8	9	4	8	
	2	2	7	8	3	5	
	3	7	7	7	3	3	
8	1	4	9	7	7	6	
	2	6	6	6	5	6	
	3	8	4	6	4	6	
9	1	2	9	6	9	6	
	2	7	5	3	5	4	
	3	9	4	3	3	4	
10	1	5	10	3	8	6	
	2	7	9	2	3	4	
	3	8	8	2	3	2	
11	1	7	9	8	8	7	
	2	9	6	6	8	5	
	3	10	3	5	7	4	
12	1	3	7	3	7	4	
	2	4	6	3	5	4	
	3	10	6	3	2	4	
13	1	4	5	9	8	8	
	2	5	4	4	7	7	
	3	6	3	1	5	6	
14	1	3	5	5	10	6	
	2	5	4	4	4	6	
	3	6	3	4	3	5	
15	1	5	8	4	6	6	
	2	8	8	2	5	5	
	3	10	8	2	5	4	
16	1	4	3	4	6	8	
	2	5	3	4	5	7	
	3	9	1	4	3	7	
17	1	7	9	8	8	8	
	2	9	5	6	7	4	
	3	10	4	4	5	3	
18	1	3	8	8	7	2	
	2	9	4	8	5	2	
	3	10	2	8	3	2	
19	1	1	6	8	7	10	
	2	2	4	8	6	6	
	3	10	4	8	5	4	
20	1	6	7	3	2	7	
	2	9	7	1	1	4	
	3	10	7	1	1	3	
21	1	1	5	4	4	5	
	2	2	3	3	3	4	
	3	5	3	3	2	4	
22	1	5	3	4	9	9	
	2	7	2	4	8	9	
	3	10	2	3	7	9	
23	1	1	6	7	6	6	
	2	6	6	6	3	4	
	3	9	6	6	3	3	
24	1	6	6	6	3	9	
	2	7	4	6	2	9	
	3	8	3	6	1	9	
25	1	1	7	2	4	7	
	2	7	7	1	3	7	
	3	8	7	1	3	6	
26	1	4	7	9	4	4	
	2	8	5	4	3	2	
	3	9	4	3	3	2	
27	1	3	7	7	5	10	
	2	4	6	7	5	9	
	3	9	4	5	2	8	
28	1	1	8	8	4	3	
	2	5	6	6	3	2	
	3	7	5	4	2	2	
29	1	4	9	8	7	10	
	2	5	6	7	6	10	
	3	10	6	5	4	10	
30	1	3	6	8	7	7	
	2	8	6	8	6	6	
	3	10	6	8	4	4	
31	1	4	8	5	8	3	
	2	6	8	3	8	3	
	3	10	8	3	8	2	
32	1	2	5	5	9	5	
	2	3	3	5	8	5	
	3	4	3	5	5	3	
33	1	5	6	7	7	8	
	2	7	3	4	7	6	
	3	10	3	1	7	2	
34	1	2	2	10	8	6	
	2	3	1	9	7	5	
	3	4	1	9	4	5	
35	1	2	6	9	8	7	
	2	4	3	7	7	6	
	3	5	3	7	7	3	
36	1	4	10	10	6	8	
	2	6	9	6	5	8	
	3	7	9	6	3	8	
37	1	3	8	5	4	2	
	2	4	3	5	3	2	
	3	7	1	3	2	2	
38	1	1	6	9	7	6	
	2	5	5	8	5	5	
	3	9	3	8	2	5	
39	1	1	6	6	7	9	
	2	2	5	6	4	3	
	3	4	4	5	3	3	
40	1	7	6	5	10	6	
	2	9	5	4	7	4	
	3	10	5	1	5	3	
41	1	3	6	8	5	5	
	2	6	5	7	4	4	
	3	7	4	5	4	2	
42	1	2	8	6	10	4	
	2	7	5	4	7	3	
	3	9	5	2	1	2	
43	1	6	4	7	5	5	
	2	7	4	5	4	4	
	3	8	3	1	4	2	
44	1	1	10	6	7	2	
	2	6	9	6	6	2	
	3	7	9	5	2	2	
45	1	1	10	6	8	7	
	2	5	7	5	7	5	
	3	8	3	4	6	2	
46	1	1	3	7	2	2	
	2	7	1	7	2	2	
	3	9	1	7	2	1	
47	1	2	9	7	3	6	
	2	3	8	7	3	6	
	3	8	7	7	3	5	
48	1	7	4	8	5	10	
	2	8	3	6	4	9	
	3	9	3	6	3	9	
49	1	2	6	8	7	5	
	2	6	5	4	5	4	
	3	8	2	4	3	4	
50	1	1	8	9	5	4	
	2	5	8	7	4	3	
	3	6	8	6	4	3	
51	1	5	5	7	4	7	
	2	6	4	6	3	5	
	3	7	4	5	1	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	24	25	277	276

************************************************************************
