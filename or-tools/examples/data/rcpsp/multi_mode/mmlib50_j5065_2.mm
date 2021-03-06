jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 7 8 9 14 17 
2	3	6		20 18 16 12 11 10 
3	3	9		30 25 23 22 20 18 16 15 10 
4	3	8		32 30 26 22 21 20 19 13 
5	3	6		27 25 23 19 18 11 
6	3	8		29 27 25 23 21 20 19 18 
7	3	7		32 29 25 23 21 19 18 
8	3	6		29 27 25 21 19 18 
9	3	3		23 21 10 
10	3	6		33 32 29 27 24 19 
11	3	7		50 40 32 30 29 26 21 
12	3	6		51 34 26 25 23 22 
13	3	7		38 34 29 27 25 24 23 
14	3	8		51 39 38 37 34 33 31 23 
15	3	6		50 41 40 34 26 21 
16	3	7		51 40 39 34 31 28 26 
17	3	6		51 50 39 34 28 26 
18	3	4		50 40 26 24 
19	3	6		40 39 37 34 31 28 
20	3	6		50 48 40 37 33 28 
21	3	4		46 39 38 28 
22	3	7		50 47 44 39 38 37 35 
23	3	2		41 28 
24	3	7		51 49 46 43 39 36 35 
25	3	6		47 44 40 39 37 35 
26	3	5		48 47 37 35 33 
27	3	6		48 47 45 43 41 36 
28	3	5		49 47 43 36 35 
29	3	6		51 47 44 43 42 41 
30	3	4		48 47 45 33 
31	3	4		50 48 43 36 
32	3	5		51 49 48 46 42 
33	3	3		44 43 42 
34	3	3		47 45 44 
35	3	2		45 42 
36	3	2		44 42 
37	3	2		46 43 
38	3	2		48 45 
39	3	1		42 
40	3	1		43 
41	3	1		46 
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
2	1	6	10	0	0	9	
	2	7	8	0	0	8	
	3	9	0	2	0	8	
3	1	1	0	4	0	10	
	2	4	0	3	0	5	
	3	9	0	3	8	0	
4	1	4	9	0	0	4	
	2	10	0	7	0	4	
	3	10	2	0	7	0	
5	1	2	4	0	5	0	
	2	5	4	0	0	6	
	3	7	4	0	0	4	
6	1	5	7	0	6	0	
	2	8	7	0	0	9	
	3	10	0	3	2	0	
7	1	2	7	0	0	7	
	2	2	5	0	7	0	
	3	9	4	0	7	0	
8	1	7	7	0	0	3	
	2	9	5	0	3	0	
	3	9	1	0	0	2	
9	1	2	0	7	0	7	
	2	5	0	5	0	5	
	3	9	3	0	0	4	
10	1	4	9	0	7	0	
	2	5	8	0	7	0	
	3	10	6	0	0	8	
11	1	4	7	0	0	8	
	2	5	5	0	7	0	
	3	10	3	0	0	4	
12	1	4	0	5	0	9	
	2	8	4	0	6	0	
	3	9	4	0	5	0	
13	1	1	0	7	10	0	
	2	1	5	0	0	3	
	3	2	0	7	4	0	
14	1	2	6	0	6	0	
	2	7	5	0	6	0	
	3	10	0	2	0	7	
15	1	2	9	0	10	0	
	2	4	7	0	9	0	
	3	6	0	1	0	2	
16	1	6	0	7	0	2	
	2	7	0	6	0	1	
	3	8	4	0	6	0	
17	1	1	8	0	0	5	
	2	7	0	5	0	5	
	3	8	4	0	0	4	
18	1	2	6	0	9	0	
	2	2	0	7	9	0	
	3	6	1	0	0	2	
19	1	4	0	10	6	0	
	2	9	3	0	0	7	
	3	10	0	7	4	0	
20	1	4	0	8	0	9	
	2	7	7	0	0	8	
	3	9	0	4	1	0	
21	1	4	1	0	0	2	
	2	6	0	4	5	0	
	3	10	0	4	0	2	
22	1	2	5	0	0	9	
	2	5	0	5	7	0	
	3	6	0	4	0	2	
23	1	3	0	1	0	3	
	2	6	8	0	4	0	
	3	7	8	0	3	0	
24	1	5	7	0	7	0	
	2	6	0	6	6	0	
	3	9	5	0	0	3	
25	1	1	6	0	8	0	
	2	4	5	0	0	7	
	3	8	0	6	8	0	
26	1	1	8	0	0	7	
	2	1	0	7	0	7	
	3	5	0	7	0	6	
27	1	4	6	0	3	0	
	2	5	4	0	3	0	
	3	10	0	6	0	3	
28	1	3	0	8	3	0	
	2	5	0	4	0	5	
	3	10	0	4	0	4	
29	1	2	0	8	6	0	
	2	7	4	0	5	0	
	3	8	0	8	0	2	
30	1	2	9	0	0	4	
	2	4	0	4	0	4	
	3	9	5	0	7	0	
31	1	1	9	0	0	7	
	2	1	0	6	0	5	
	3	5	0	6	0	4	
32	1	3	0	8	0	3	
	2	4	5	0	4	0	
	3	7	5	0	0	2	
33	1	1	0	4	0	7	
	2	1	0	4	4	0	
	3	9	0	4	0	1	
34	1	4	6	0	6	0	
	2	6	5	0	5	0	
	3	10	4	0	2	0	
35	1	2	7	0	4	0	
	2	5	0	8	3	0	
	3	9	2	0	2	0	
36	1	2	10	0	9	0	
	2	3	9	0	9	0	
	3	7	9	0	0	2	
37	1	3	10	0	8	0	
	2	8	0	9	0	8	
	3	9	0	8	7	0	
38	1	1	6	0	0	9	
	2	4	0	8	0	7	
	3	5	0	8	3	0	
39	1	5	4	0	7	0	
	2	10	0	2	0	4	
	3	10	1	0	3	0	
40	1	1	5	0	5	0	
	2	2	4	0	0	5	
	3	6	0	4	0	4	
41	1	4	3	0	7	0	
	2	5	0	3	6	0	
	3	8	1	0	0	3	
42	1	1	0	9	10	0	
	2	4	4	0	0	3	
	3	6	0	8	6	0	
43	1	2	0	9	7	0	
	2	8	0	8	0	8	
	3	9	2	0	6	0	
44	1	2	0	8	6	0	
	2	3	0	7	5	0	
	3	7	8	0	3	0	
45	1	3	8	0	10	0	
	2	8	0	5	10	0	
	3	9	0	5	0	9	
46	1	1	5	0	9	0	
	2	4	4	0	8	0	
	3	5	0	5	6	0	
47	1	2	0	2	0	5	
	2	8	2	0	2	0	
	3	8	2	0	0	3	
48	1	3	4	0	0	3	
	2	3	3	0	6	0	
	3	7	3	0	0	2	
49	1	1	0	3	8	0	
	2	6	5	0	0	1	
	3	10	4	0	0	1	
50	1	3	0	3	0	9	
	2	6	4	0	4	0	
	3	10	2	0	1	0	
51	1	2	2	0	0	6	
	2	4	0	5	4	0	
	3	10	0	4	0	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	49	57	211	197

************************************************************************
