jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 7 8 12 15 18 19 
2	3	4		20 17 11 5 
3	3	3		10 9 6 
4	3	8		35 31 30 28 26 22 17 11 
5	3	7		30 27 24 22 16 14 13 
6	3	7		33 30 27 24 23 17 14 
7	3	5		35 26 22 21 11 
8	3	7		40 36 33 27 25 23 16 
9	3	4		35 24 22 11 
10	3	4		39 24 23 13 
11	3	10		40 39 38 36 34 33 32 27 25 23 
12	3	7		38 35 32 31 28 26 21 
13	3	8		51 38 36 33 32 31 26 25 
14	3	7		38 36 35 32 29 28 26 
15	3	7		36 35 33 32 31 23 22 
16	3	7		41 39 38 35 32 31 26 
17	3	4		40 34 32 21 
18	3	7		51 43 42 39 36 34 29 
19	3	6		51 42 39 38 34 29 
20	3	5		51 43 41 38 26 
21	3	6		51 50 43 42 36 29 
22	3	5		51 50 42 38 29 
23	3	7		50 49 46 43 42 41 37 
24	3	6		49 46 43 42 40 37 
25	3	3		43 42 29 
26	3	5		49 47 42 37 34 
27	3	7		50 49 48 46 45 43 41 
28	3	7		51 49 46 45 44 43 39 
29	3	5		49 47 46 41 37 
30	3	5		49 47 46 41 37 
31	3	6		50 48 46 45 44 43 
32	3	4		48 46 44 42 
33	3	4		47 46 45 41 
34	3	4		50 48 46 44 
35	3	4		49 47 46 44 
36	3	3		49 45 44 
37	3	2		48 45 
38	3	2		45 44 
39	3	2		48 47 
40	3	2		51 44 
41	3	1		44 
42	3	1		45 
43	3	1		47 
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
2	1	2	2	7	1	5	
	2	3	2	6	1	5	
	3	4	1	4	1	5	
3	1	5	3	9	2	6	
	2	6	2	6	2	5	
	3	9	2	5	2	5	
4	1	1	9	8	5	7	
	2	2	7	6	4	6	
	3	5	5	4	3	5	
5	1	2	9	9	4	8	
	2	6	6	9	3	8	
	3	7	3	9	2	8	
6	1	2	6	9	6	6	
	2	5	5	9	5	6	
	3	7	2	8	3	3	
7	1	1	8	1	5	8	
	2	6	8	1	5	7	
	3	9	8	1	5	6	
8	1	3	5	9	7	10	
	2	6	4	7	5	6	
	3	7	4	4	4	5	
9	1	4	8	4	6	9	
	2	5	7	4	6	9	
	3	6	5	4	6	9	
10	1	1	7	9	7	8	
	2	4	6	6	6	7	
	3	7	5	6	6	7	
11	1	1	9	6	9	5	
	2	6	6	5	7	4	
	3	10	3	3	6	3	
12	1	1	6	9	7	8	
	2	5	5	7	4	8	
	3	8	5	5	3	6	
13	1	4	8	10	8	7	
	2	5	6	4	5	6	
	3	9	4	2	2	4	
14	1	1	8	8	6	1	
	2	5	8	7	5	1	
	3	8	6	6	4	1	
15	1	4	8	9	9	4	
	2	6	7	4	7	4	
	3	10	3	1	4	4	
16	1	3	10	10	4	6	
	2	6	8	10	2	5	
	3	9	6	10	2	4	
17	1	4	6	7	6	7	
	2	5	4	6	6	5	
	3	8	2	4	5	3	
18	1	7	7	8	6	2	
	2	8	7	6	6	2	
	3	9	5	3	6	2	
19	1	2	8	7	7	5	
	2	5	8	6	5	4	
	3	9	8	5	2	4	
20	1	4	5	7	9	7	
	2	5	3	3	7	4	
	3	10	1	1	6	1	
21	1	5	4	7	5	4	
	2	9	2	7	5	3	
	3	10	2	6	5	2	
22	1	4	5	8	8	8	
	2	5	3	6	7	7	
	3	9	3	6	7	6	
23	1	5	9	9	10	6	
	2	7	7	8	10	4	
	3	10	7	7	10	2	
24	1	1	7	10	3	3	
	2	3	7	9	3	3	
	3	8	7	9	2	3	
25	1	7	3	9	5	7	
	2	8	3	8	5	6	
	3	9	3	8	5	5	
26	1	2	9	9	8	7	
	2	3	7	6	7	6	
	3	4	7	5	3	5	
27	1	6	8	4	7	9	
	2	7	5	4	4	8	
	3	10	4	4	2	7	
28	1	4	1	4	7	6	
	2	5	1	3	4	4	
	3	6	1	3	3	3	
29	1	1	10	7	6	9	
	2	4	8	5	6	7	
	3	9	6	4	2	7	
30	1	2	7	3	4	10	
	2	3	6	1	4	5	
	3	4	6	1	2	4	
31	1	2	8	5	6	2	
	2	3	6	2	6	1	
	3	4	4	1	6	1	
32	1	2	5	7	2	7	
	2	3	4	5	2	5	
	3	7	4	3	2	5	
33	1	3	9	5	7	4	
	2	4	7	3	4	2	
	3	5	4	2	2	2	
34	1	1	5	6	7	7	
	2	9	5	4	6	5	
	3	10	5	4	6	4	
35	1	1	7	7	2	4	
	2	8	5	6	2	4	
	3	9	5	4	2	4	
36	1	1	7	8	7	9	
	2	6	6	6	5	6	
	3	7	6	1	5	4	
37	1	1	5	8	6	7	
	2	2	3	7	2	5	
	3	9	3	7	2	4	
38	1	1	2	8	5	5	
	2	7	2	5	4	5	
	3	10	2	4	3	5	
39	1	8	10	7	9	5	
	2	9	9	7	7	5	
	3	10	8	5	5	5	
40	1	1	5	9	9	5	
	2	4	3	6	4	4	
	3	10	1	5	3	3	
41	1	3	7	6	2	8	
	2	4	5	6	2	7	
	3	5	2	2	2	6	
42	1	2	7	7	5	9	
	2	4	5	7	4	8	
	3	6	5	7	3	8	
43	1	2	8	7	9	6	
	2	5	7	6	8	5	
	3	7	7	5	5	5	
44	1	2	8	3	4	6	
	2	9	4	2	4	3	
	3	10	3	2	3	3	
45	1	2	4	6	7	10	
	2	9	2	5	5	10	
	3	10	2	4	3	10	
46	1	3	8	2	4	9	
	2	8	7	1	4	6	
	3	9	6	1	4	3	
47	1	2	7	7	7	9	
	2	9	6	6	6	8	
	3	10	5	6	5	8	
48	1	4	3	7	6	4	
	2	7	2	6	5	4	
	3	10	2	6	5	3	
49	1	8	8	8	6	5	
	2	9	6	6	5	2	
	3	10	5	6	3	2	
50	1	5	3	7	8	3	
	2	6	3	5	8	3	
	3	8	2	3	8	1	
51	1	2	8	4	10	9	
	2	3	7	3	9	7	
	3	8	5	3	8	6	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	52	59	278	297

************************************************************************
