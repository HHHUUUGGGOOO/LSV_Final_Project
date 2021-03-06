jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 3 5 12 
2	3	4		8 7 6 4 
3	3	3		15 6 4 
4	3	5		14 13 11 10 9 
5	3	5		27 17 15 13 11 
6	3	5		29 19 14 13 9 
7	3	2		11 9 
8	3	6		29 27 19 18 17 14 
9	3	5		27 23 18 17 16 
10	3	5		29 27 23 18 16 
11	3	4		29 21 20 19 
12	3	3		23 20 17 
13	3	2		18 16 
14	3	2		26 16 
15	3	4		35 28 23 22 
16	3	3		35 28 20 
17	3	4		35 28 25 22 
18	3	2		26 20 
19	3	4		35 34 24 23 
20	3	2		25 22 
21	3	5		40 35 34 30 28 
22	3	3		34 33 24 
23	3	3		40 33 26 
24	3	6		40 38 37 36 31 30 
25	3	6		40 39 38 37 31 30 
26	3	5		38 37 36 31 30 
27	3	4		36 35 31 30 
28	3	4		39 33 32 31 
29	3	4		39 38 35 31 
30	3	1		32 
31	3	4		51 45 43 41 
32	3	4		51 45 43 41 
33	3	3		45 42 38 
34	3	2		45 36 
35	3	2		45 37 
36	3	2		43 39 
37	3	2		43 42 
38	3	3		51 48 43 
39	3	2		50 42 
40	3	2		51 42 
41	3	1		42 
42	3	2		49 44 
43	3	4		50 49 47 46 
44	3	3		48 47 46 
45	3	2		50 46 
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
2	1	7	7	0	8	7	
	2	7	0	2	6	6	
	3	9	0	2	5	5	
3	1	4	0	2	5	5	
	2	5	0	2	4	4	
	3	6	0	2	4	3	
4	1	1	8	0	5	10	
	2	2	7	0	5	9	
	3	5	4	0	3	8	
5	1	3	0	6	8	9	
	2	4	0	3	8	9	
	3	6	0	2	8	9	
6	1	4	1	0	9	7	
	2	9	1	0	8	5	
	3	10	0	3	7	4	
7	1	1	9	0	8	5	
	2	6	7	0	6	3	
	3	7	0	4	4	2	
8	1	5	0	5	3	6	
	2	8	3	0	3	3	
	3	10	0	1	3	3	
9	1	1	0	8	5	8	
	2	1	4	0	3	6	
	3	3	0	4	3	5	
10	1	1	6	0	6	8	
	2	2	6	0	6	7	
	3	5	0	3	6	7	
11	1	1	9	0	9	2	
	2	3	0	7	7	2	
	3	7	8	0	4	2	
12	1	9	0	8	7	7	
	2	10	6	0	5	7	
	3	10	0	7	4	6	
13	1	1	6	0	5	9	
	2	5	5	0	5	9	
	3	6	5	0	3	7	
14	1	2	0	2	3	7	
	2	8	7	0	1	5	
	3	10	0	2	1	2	
15	1	6	6	0	9	7	
	2	6	0	5	8	4	
	3	10	0	5	8	3	
16	1	4	3	0	6	4	
	2	6	1	0	4	4	
	3	8	0	6	1	3	
17	1	1	4	0	1	6	
	2	5	0	8	1	5	
	3	6	3	0	1	5	
18	1	5	0	8	8	4	
	2	6	4	0	5	4	
	3	7	3	0	3	4	
19	1	3	0	9	8	5	
	2	5	0	7	4	5	
	3	10	0	7	4	4	
20	1	1	0	6	1	4	
	2	4	0	4	1	3	
	3	9	0	4	1	1	
21	1	5	0	5	5	8	
	2	7	0	4	5	4	
	3	9	0	3	5	4	
22	1	5	7	0	8	8	
	2	7	0	3	5	5	
	3	10	0	1	3	4	
23	1	3	0	7	3	5	
	2	3	5	0	3	4	
	3	9	0	3	3	4	
24	1	1	0	6	9	3	
	2	6	0	6	6	2	
	3	9	0	4	6	1	
25	1	1	7	0	3	4	
	2	3	0	4	3	4	
	3	4	5	0	3	2	
26	1	2	0	9	7	3	
	2	5	0	7	4	3	
	3	10	0	7	3	2	
27	1	1	4	0	3	3	
	2	4	3	0	3	3	
	3	5	0	1	3	3	
28	1	5	0	9	3	8	
	2	6	7	0	2	7	
	3	8	0	4	2	7	
29	1	9	4	0	8	9	
	2	9	0	6	8	7	
	3	10	0	6	8	5	
30	1	3	0	7	9	4	
	2	8	2	0	9	4	
	3	9	1	0	8	4	
31	1	2	0	7	9	8	
	2	3	7	0	9	6	
	3	10	6	0	8	5	
32	1	2	0	8	5	10	
	2	3	3	0	3	6	
	3	5	3	0	3	3	
33	1	2	5	0	9	8	
	2	6	0	3	6	8	
	3	9	2	0	6	8	
34	1	3	7	0	7	10	
	2	8	0	4	4	7	
	3	10	3	0	2	4	
35	1	4	6	0	9	5	
	2	6	0	6	7	5	
	3	10	3	0	4	5	
36	1	7	7	0	7	8	
	2	9	7	0	7	7	
	3	10	3	0	6	5	
37	1	2	0	10	10	3	
	2	3	6	0	9	3	
	3	4	0	9	9	3	
38	1	7	0	4	6	9	
	2	7	7	0	5	9	
	3	10	0	2	3	7	
39	1	2	7	0	9	5	
	2	4	6	0	6	5	
	3	9	0	7	6	5	
40	1	1	6	0	7	7	
	2	2	0	5	6	7	
	3	10	6	0	5	6	
41	1	1	7	0	8	10	
	2	4	6	0	6	8	
	3	10	0	9	5	6	
42	1	6	5	0	4	3	
	2	7	4	0	3	3	
	3	8	3	0	3	3	
43	1	1	0	10	7	4	
	2	5	0	9	4	4	
	3	10	3	0	2	3	
44	1	2	0	8	5	7	
	2	9	8	0	4	5	
	3	10	0	8	4	5	
45	1	4	9	0	5	5	
	2	7	0	4	2	4	
	3	9	7	0	1	2	
46	1	2	7	0	7	7	
	2	3	5	0	4	6	
	3	5	2	0	3	3	
47	1	3	5	0	9	7	
	2	4	0	5	7	6	
	3	8	5	0	5	2	
48	1	4	5	0	10	6	
	2	8	4	0	4	5	
	3	8	0	7	1	5	
49	1	3	0	8	8	6	
	2	4	2	0	6	3	
	3	9	0	2	4	3	
50	1	9	9	0	9	6	
	2	9	0	6	5	5	
	3	10	0	4	3	2	
51	1	8	0	4	9	7	
	2	9	0	3	8	6	
	3	10	0	2	7	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	15	18	300	289

************************************************************************
