jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	3		2 3 4 
2	3	4		10 9 7 5 
3	3	4		12 8 6 5 
4	3	2		8 5 
5	3	4		25 20 13 11 
6	3	4		25 20 13 11 
7	3	4		25 20 12 11 
8	3	2		17 9 
9	3	7		25 22 20 16 15 14 13 
10	3	5		22 20 16 14 13 
11	3	4		17 16 15 14 
12	3	4		30 22 16 15 
13	3	6		30 28 27 24 21 19 
14	3	3		23 21 18 
15	3	2		19 18 
16	3	5		32 28 27 24 21 
17	3	5		30 29 27 26 22 
18	3	4		29 28 27 24 
19	3	6		42 41 33 32 29 26 
20	3	4		30 28 27 26 
21	3	5		42 41 33 29 26 
22	3	7		42 41 39 35 34 33 32 
23	3	7		42 41 39 35 34 33 32 
24	3	3		34 33 26 
25	3	2		30 27 
26	3	4		37 36 35 31 
27	3	5		42 40 37 36 34 
28	3	4		39 37 36 33 
29	3	3		39 35 34 
30	3	3		38 36 35 
31	3	5		48 47 40 39 38 
32	3	3		38 37 36 
33	3	3		47 40 38 
34	3	3		47 46 38 
35	3	3		48 43 40 
36	3	6		51 50 48 47 46 45 
37	3	4		48 47 45 44 
38	3	3		45 44 43 
39	3	3		46 45 43 
40	3	4		51 50 46 45 
41	3	4		51 50 46 45 
42	3	2		45 43 
43	3	3		51 50 49 
44	3	2		51 50 
45	3	1		49 
46	3	1		49 
47	3	1		49 
48	3	1		49 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	1	0	7	0	2	
	2	5	2	0	0	2	
	3	7	0	5	0	2	
3	1	4	7	0	10	0	
	2	5	0	9	0	2	
	3	6	0	9	0	1	
4	1	1	4	0	10	0	
	2	2	3	0	9	0	
	3	8	3	0	0	3	
5	1	1	4	0	0	5	
	2	7	4	0	0	3	
	3	10	4	0	0	2	
6	1	2	0	10	0	3	
	2	7	0	8	0	2	
	3	10	0	8	3	0	
7	1	4	0	6	0	7	
	2	5	0	6	0	5	
	3	6	0	5	1	0	
8	1	2	0	7	0	8	
	2	7	0	4	3	0	
	3	9	0	3	0	8	
9	1	1	6	0	5	0	
	2	3	0	8	5	0	
	3	8	1	0	0	2	
10	1	4	0	6	7	0	
	2	5	3	0	5	0	
	3	6	0	4	4	0	
11	1	2	0	3	0	5	
	2	8	7	0	3	0	
	3	10	5	0	0	3	
12	1	4	5	0	7	0	
	2	8	4	0	5	0	
	3	10	2	0	4	0	
13	1	1	0	7	9	0	
	2	3	5	0	7	0	
	3	9	3	0	7	0	
14	1	2	1	0	0	4	
	2	2	0	6	5	0	
	3	8	1	0	4	0	
15	1	6	4	0	0	1	
	2	9	0	9	0	1	
	3	10	2	0	2	0	
16	1	3	10	0	0	7	
	2	6	10	0	0	6	
	3	7	0	4	0	5	
17	1	2	4	0	7	0	
	2	3	0	1	5	0	
	3	6	0	1	2	0	
18	1	3	4	0	4	0	
	2	3	0	5	4	0	
	3	10	3	0	0	1	
19	1	2	6	0	0	5	
	2	2	0	8	0	3	
	3	9	0	7	5	0	
20	1	1	5	0	0	6	
	2	4	0	7	3	0	
	3	9	0	5	0	6	
21	1	4	2	0	0	8	
	2	7	2	0	0	5	
	3	8	2	0	0	1	
22	1	3	4	0	0	5	
	2	4	4	0	0	4	
	3	10	4	0	0	1	
23	1	1	0	8	0	9	
	2	3	0	6	2	0	
	3	7	0	5	0	5	
24	1	3	7	0	0	2	
	2	5	0	8	7	0	
	3	10	4	0	0	1	
25	1	2	0	8	0	5	
	2	3	8	0	0	4	
	3	8	8	0	0	3	
26	1	1	0	7	0	5	
	2	2	6	0	3	0	
	3	7	6	0	0	2	
27	1	7	7	0	0	4	
	2	8	0	7	0	2	
	3	9	4	0	0	2	
28	1	3	7	0	0	7	
	2	5	0	3	3	0	
	3	10	6	0	0	1	
29	1	6	8	0	6	0	
	2	8	7	0	6	0	
	3	9	3	0	5	0	
30	1	5	5	0	0	8	
	2	5	0	2	0	8	
	3	8	2	0	0	7	
31	1	1	0	6	0	10	
	2	3	0	6	1	0	
	3	7	3	0	0	9	
32	1	6	0	7	8	0	
	2	7	5	0	5	0	
	3	9	0	5	4	0	
33	1	1	0	5	0	8	
	2	3	6	0	4	0	
	3	8	3	0	0	5	
34	1	3	0	7	0	7	
	2	6	0	7	0	6	
	3	9	0	4	0	3	
35	1	2	0	3	0	4	
	2	8	0	3	3	0	
	3	8	0	3	0	3	
36	1	2	3	0	1	0	
	2	3	2	0	1	0	
	3	4	2	0	0	5	
37	1	1	4	0	5	0	
	2	1	4	0	0	5	
	3	3	3	0	5	0	
38	1	2	0	7	6	0	
	2	4	2	0	3	0	
	3	6	0	4	0	2	
39	1	1	0	7	9	0	
	2	4	6	0	0	3	
	3	10	6	0	7	0	
40	1	6	0	6	2	0	
	2	6	0	4	0	9	
	3	10	0	3	2	0	
41	1	2	0	6	8	0	
	2	6	0	4	4	0	
	3	9	0	4	1	0	
42	1	3	0	8	0	6	
	2	4	0	4	0	5	
	3	5	0	2	0	5	
43	1	4	0	5	7	0	
	2	7	9	0	5	0	
	3	8	0	3	0	1	
44	1	1	5	0	0	9	
	2	3	0	1	0	7	
	3	4	0	1	0	4	
45	1	2	0	7	0	4	
	2	3	3	0	4	0	
	3	8	0	7	0	3	
46	1	1	0	8	5	0	
	2	2	0	6	0	3	
	3	5	4	0	2	0	
47	1	6	8	0	3	0	
	2	8	0	9	2	0	
	3	9	0	9	1	0	
48	1	1	0	5	7	0	
	2	2	0	2	0	2	
	3	4	4	0	3	0	
49	1	2	0	10	5	0	
	2	4	4	0	5	0	
	3	6	0	7	3	0	
50	1	8	0	5	4	0	
	2	9	0	5	3	0	
	3	10	0	5	2	0	
51	1	8	0	9	0	10	
	2	9	3	0	0	9	
	3	10	3	0	1	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	28	34	71	76

************************************************************************
