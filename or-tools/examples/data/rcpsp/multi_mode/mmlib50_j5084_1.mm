jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	3		2 4 6 
2	3	3		9 7 3 
3	3	3		11 8 5 
4	3	5		19 18 15 12 7 
5	3	7		22 19 18 15 14 13 12 
6	3	5		27 22 13 11 10 
7	3	4		27 22 17 10 
8	3	3		27 15 10 
9	3	3		18 15 10 
10	3	3		23 21 16 
11	3	2		18 15 
12	3	6		27 26 25 23 21 20 
13	3	6		33 26 25 24 21 20 
14	3	4		26 25 23 21 
15	3	2		34 17 
16	3	5		29 26 25 24 20 
17	3	4		29 26 23 20 
18	3	4		33 29 25 20 
19	3	4		33 30 24 21 
20	3	5		39 32 31 30 28 
21	3	5		39 34 31 29 28 
22	3	5		39 32 31 30 28 
23	3	5		37 35 33 32 30 
24	3	5		39 37 35 34 31 
25	3	3		39 30 28 
26	3	4		37 35 31 30 
27	3	4		38 37 35 33 
28	3	2		37 35 
29	3	2		37 35 
30	3	3		40 38 36 
31	3	3		40 38 36 
32	3	3		40 38 36 
33	3	3		41 40 36 
34	3	3		41 40 36 
35	3	2		41 36 
36	3	6		51 50 46 45 43 42 
37	3	3		51 41 40 
38	3	3		51 45 41 
39	3	3		51 43 41 
40	3	5		50 49 48 45 44 
41	3	2		50 42 
42	3	3		49 48 44 
43	3	2		48 47 
44	3	1		47 
45	3	1		47 
46	3	1		47 
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
2	1	3	8	7	8	4	
	2	7	7	6	7	3	
	3	9	6	4	7	2	
3	1	4	7	7	6	5	
	2	8	6	6	6	4	
	3	9	5	5	6	4	
4	1	4	9	8	7	7	
	2	6	6	7	6	6	
	3	8	4	7	5	3	
5	1	2	5	10	8	10	
	2	3	2	9	5	6	
	3	9	1	7	5	4	
6	1	1	6	4	8	9	
	2	7	3	2	6	9	
	3	8	2	2	6	9	
7	1	3	6	9	2	10	
	2	4	6	8	1	7	
	3	6	6	6	1	6	
8	1	1	8	7	4	5	
	2	2	6	4	3	5	
	3	6	4	4	3	5	
9	1	6	4	7	8	2	
	2	9	4	4	7	2	
	3	10	3	2	7	2	
10	1	2	8	2	9	7	
	2	3	5	2	9	5	
	3	6	4	1	9	5	
11	1	2	6	3	2	7	
	2	7	6	3	1	6	
	3	9	6	3	1	2	
12	1	1	8	6	9	4	
	2	8	7	6	5	4	
	3	9	5	5	2	2	
13	1	2	2	9	5	9	
	2	4	1	8	3	9	
	3	7	1	8	3	8	
14	1	1	6	6	4	8	
	2	7	5	4	4	3	
	3	8	4	2	1	1	
15	1	1	8	7	7	8	
	2	7	8	7	5	7	
	3	9	6	7	3	5	
16	1	2	8	9	5	7	
	2	3	5	7	3	7	
	3	4	2	5	3	7	
17	1	3	5	10	8	6	
	2	4	4	5	4	6	
	3	5	3	2	3	2	
18	1	1	9	8	9	4	
	2	4	9	6	8	3	
	3	9	9	4	8	2	
19	1	2	1	4	9	6	
	2	3	1	2	8	6	
	3	5	1	1	4	6	
20	1	1	3	5	10	5	
	2	7	2	5	10	4	
	3	9	2	5	10	2	
21	1	3	7	3	10	8	
	2	6	7	3	9	7	
	3	9	7	3	8	4	
22	1	3	8	9	7	5	
	2	4	5	5	3	5	
	3	8	1	4	3	5	
23	1	3	6	6	7	4	
	2	4	4	6	5	3	
	3	6	1	6	4	2	
24	1	2	1	3	9	10	
	2	3	1	1	7	10	
	3	9	1	1	5	10	
25	1	2	7	8	10	4	
	2	3	3	8	8	4	
	3	4	3	8	8	3	
26	1	4	8	9	9	2	
	2	6	4	8	8	2	
	3	8	4	7	7	1	
27	1	4	10	7	3	10	
	2	7	9	5	2	10	
	3	10	9	3	1	10	
28	1	4	9	8	4	9	
	2	8	6	5	4	6	
	3	9	3	4	2	6	
29	1	5	3	10	7	5	
	2	7	3	8	7	4	
	3	9	3	7	7	4	
30	1	3	4	7	7	5	
	2	9	4	6	5	4	
	3	10	4	4	2	3	
31	1	5	10	10	7	7	
	2	8	8	5	7	7	
	3	9	8	3	5	3	
32	1	1	8	6	2	8	
	2	4	7	5	2	7	
	3	7	7	5	2	6	
33	1	1	9	7	7	3	
	2	2	8	3	4	3	
	3	5	8	2	2	2	
34	1	8	7	10	10	6	
	2	9	6	7	8	3	
	3	10	6	2	6	2	
35	1	1	4	7	8	2	
	2	8	4	6	6	2	
	3	10	2	4	5	2	
36	1	2	9	10	10	8	
	2	9	5	7	9	8	
	3	10	4	5	9	7	
37	1	4	6	7	8	9	
	2	5	5	7	6	7	
	3	6	3	7	3	5	
38	1	3	8	2	8	8	
	2	8	8	2	6	8	
	3	10	8	1	5	8	
39	1	1	4	5	7	9	
	2	3	3	5	7	7	
	3	9	3	5	7	5	
40	1	1	9	2	9	6	
	2	2	5	1	4	6	
	3	6	3	1	2	3	
41	1	2	8	2	9	5	
	2	6	5	2	6	5	
	3	10	3	2	4	4	
42	1	2	7	7	7	9	
	2	3	5	7	5	7	
	3	10	3	7	2	7	
43	1	5	8	6	6	4	
	2	6	8	5	6	4	
	3	7	8	4	5	3	
44	1	1	5	1	5	10	
	2	2	5	1	5	8	
	3	3	5	1	3	6	
45	1	4	3	6	7	3	
	2	7	3	3	5	2	
	3	10	1	3	1	2	
46	1	9	10	2	10	1	
	2	9	8	1	9	2	
	3	10	8	1	9	1	
47	1	4	5	6	7	9	
	2	5	5	5	5	9	
	3	10	5	5	3	8	
48	1	2	3	7	8	8	
	2	4	3	5	5	6	
	3	5	1	3	3	2	
49	1	4	8	4	10	7	
	2	6	7	3	8	5	
	3	9	4	2	8	4	
50	1	1	1	1	4	7	
	2	2	1	1	3	7	
	3	8	1	1	2	4	
51	1	5	6	5	8	3	
	2	8	5	3	8	2	
	3	10	3	2	8	2	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	20	20	325	291

************************************************************************
