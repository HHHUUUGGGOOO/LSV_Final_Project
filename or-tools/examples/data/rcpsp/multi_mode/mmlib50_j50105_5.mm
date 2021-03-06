jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 5 7 8 10 
2	3	3		13 11 4 
3	3	3		13 11 6 
4	3	2		9 6 
5	3	1		6 
6	3	4		17 15 14 12 
7	3	3		15 13 12 
8	3	3		18 13 12 
9	3	6		23 21 20 19 18 16 
10	3	6		23 22 21 19 17 16 
11	3	4		23 20 18 14 
12	3	5		23 22 21 20 16 
13	3	4		26 22 19 17 
14	3	6		30 28 27 26 24 19 
15	3	4		26 25 24 18 
16	3	8		35 30 29 28 27 26 25 24 
17	3	6		35 30 29 28 27 24 
18	3	4		35 28 27 22 
19	3	5		35 34 31 29 25 
20	3	5		34 31 30 29 25 
21	3	5		39 35 34 30 25 
22	3	3		37 31 29 
23	3	6		39 38 37 34 33 32 
24	3	5		39 38 37 34 33 
25	3	4		38 37 33 32 
26	3	4		39 38 37 32 
27	3	3		43 37 31 
28	3	4		38 37 36 34 
29	3	3		38 33 32 
30	3	2		38 32 
31	3	3		39 38 36 
32	3	4		51 43 42 36 
33	3	4		51 43 42 36 
34	3	5		51 48 43 42 40 
35	3	3		50 42 38 
36	3	3		48 41 40 
37	3	6		50 49 48 47 46 44 
38	3	4		51 49 48 41 
39	3	4		51 48 47 42 
40	3	5		50 49 47 46 44 
41	3	3		47 46 45 
42	3	2		46 44 
43	3	2		46 44 
44	3	1		45 
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
2	1	1	2	4	3	0	
	2	2	2	3	3	0	
	3	9	2	1	0	3	
3	1	4	5	8	0	9	
	2	8	5	8	0	7	
	3	9	5	8	3	0	
4	1	1	5	8	0	8	
	2	6	3	4	0	6	
	3	9	3	3	0	5	
5	1	4	5	3	7	0	
	2	4	3	2	0	6	
	3	9	1	2	5	0	
6	1	2	9	6	0	7	
	2	3	8	6	6	0	
	3	10	8	3	0	1	
7	1	2	10	4	2	0	
	2	5	9	2	0	5	
	3	6	8	1	0	3	
8	1	1	9	7	0	6	
	2	9	7	7	0	4	
	3	9	6	7	6	0	
9	1	1	2	7	3	0	
	2	2	2	7	2	0	
	3	6	2	6	3	0	
10	1	4	4	2	7	0	
	2	7	2	2	0	5	
	3	9	2	2	0	3	
11	1	4	1	8	4	0	
	2	7	1	8	3	0	
	3	8	1	8	2	0	
12	1	3	9	5	4	0	
	2	4	8	5	2	0	
	3	9	8	5	1	0	
13	1	5	7	6	0	7	
	2	5	5	5	5	0	
	3	10	2	2	5	0	
14	1	4	7	5	0	5	
	2	6	6	4	0	2	
	3	10	5	4	8	0	
15	1	1	3	3	9	0	
	2	2	3	2	7	0	
	3	2	3	2	0	5	
16	1	2	10	8	6	0	
	2	6	10	7	4	0	
	3	7	10	7	3	0	
17	1	5	3	6	0	7	
	2	6	3	4	9	0	
	3	6	3	4	0	4	
18	1	2	6	7	0	9	
	2	3	5	5	0	4	
	3	8	3	5	7	0	
19	1	1	8	2	10	0	
	2	8	8	1	0	2	
	3	9	8	1	9	0	
20	1	1	9	10	0	6	
	2	2	9	6	0	5	
	3	5	8	6	0	4	
21	1	1	7	8	2	0	
	2	2	7	6	1	0	
	3	8	7	6	0	3	
22	1	8	9	8	9	0	
	2	9	6	6	8	0	
	3	10	4	5	0	8	
23	1	6	6	5	5	0	
	2	8	4	4	0	2	
	3	9	4	4	5	0	
24	1	5	9	6	5	0	
	2	6	3	6	0	3	
	3	10	2	4	2	0	
25	1	6	8	7	7	0	
	2	6	6	7	0	3	
	3	9	6	7	0	2	
26	1	4	3	8	6	0	
	2	7	3	8	0	3	
	3	10	3	8	0	1	
27	1	3	10	8	0	9	
	2	5	9	7	1	0	
	3	10	9	6	1	0	
28	1	4	1	9	5	0	
	2	5	1	9	0	4	
	3	8	1	9	3	0	
29	1	3	10	1	0	10	
	2	6	8	1	8	0	
	3	7	6	1	8	0	
30	1	1	8	7	0	3	
	2	1	6	6	4	0	
	3	9	6	4	4	0	
31	1	1	5	9	9	0	
	2	5	4	8	8	0	
	3	9	2	7	7	0	
32	1	2	10	4	0	9	
	2	10	7	2	0	9	
	3	10	7	1	6	0	
33	1	4	3	8	3	0	
	2	6	2	6	3	0	
	3	9	2	3	0	4	
34	1	3	3	4	0	6	
	2	9	3	4	7	0	
	3	10	3	4	6	0	
35	1	3	8	8	0	8	
	2	5	6	6	0	7	
	3	7	5	3	0	5	
36	1	2	6	5	6	0	
	2	3	3	4	5	0	
	3	7	3	3	0	8	
37	1	4	4	5	0	7	
	2	6	3	5	1	0	
	3	9	2	4	1	0	
38	1	3	6	4	10	0	
	2	5	6	4	9	0	
	3	10	5	4	8	0	
39	1	1	7	7	4	0	
	2	5	4	6	4	0	
	3	7	3	5	4	0	
40	1	2	7	6	0	7	
	2	4	6	6	0	6	
	3	6	6	5	0	3	
41	1	1	5	7	0	7	
	2	1	3	6	6	0	
	3	9	1	4	0	3	
42	1	2	3	7	6	0	
	2	4	2	7	6	0	
	3	7	1	2	6	0	
43	1	1	8	5	0	2	
	2	1	5	4	5	0	
	3	4	1	3	0	1	
44	1	1	8	4	0	4	
	2	6	7	3	0	3	
	3	9	6	3	0	3	
45	1	3	10	9	3	0	
	2	3	9	8	0	4	
	3	10	7	8	0	3	
46	1	6	6	1	0	6	
	2	10	6	1	0	5	
	3	10	6	1	3	0	
47	1	1	7	3	0	6	
	2	4	7	2	2	0	
	3	8	4	2	0	2	
48	1	2	5	10	0	6	
	2	7	5	8	0	6	
	3	9	5	8	5	0	
49	1	1	8	9	6	0	
	2	7	8	8	0	2	
	3	8	8	7	0	2	
50	1	9	2	2	0	5	
	2	9	2	2	7	0	
	3	10	2	2	6	0	
51	1	3	8	8	0	6	
	2	5	8	8	2	0	
	3	6	8	7	2	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	49	52	138	127

************************************************************************
