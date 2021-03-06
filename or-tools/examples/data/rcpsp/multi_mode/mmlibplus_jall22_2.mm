jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 5 6 8 9 
2	3	4		17 13 10 4 
3	3	3		14 13 11 
4	3	4		19 18 15 11 
5	3	4		19 17 13 12 
6	3	1		7 
7	3	4		21 19 18 13 
8	3	3		19 15 12 
9	3	3		19 15 12 
10	3	4		23 22 20 14 
11	3	2		20 12 
12	3	4		24 23 21 16 
13	3	3		24 23 15 
14	3	3		21 19 18 
15	3	4		29 26 22 20 
16	3	4		30 29 25 22 
17	3	4		28 26 25 24 
18	3	5		30 28 27 26 25 
19	3	3		29 28 24 
20	3	5		37 32 30 27 25 
21	3	4		33 30 27 26 
22	3	5		37 33 32 28 27 
23	3	5		37 33 32 28 27 
24	3	4		33 32 30 27 
25	3	4		35 34 33 31 
26	3	4		37 35 34 32 
27	3	5		51 41 36 35 31 
28	3	3		51 40 34 
29	3	5		51 44 41 40 38 
30	3	4		41 40 39 36 
31	3	4		44 40 39 38 
32	3	4		51 40 39 38 
33	3	4		51 47 41 38 
34	3	2		41 36 
35	3	3		42 40 39 
36	3	2		47 38 
37	3	4		51 45 44 42 
38	3	3		50 43 42 
39	3	3		47 46 43 
40	3	3		49 47 45 
41	3	3		50 49 48 
42	3	2		49 46 
43	3	2		49 45 
44	3	2		50 49 
45	3	1		48 
46	3	1		48 
47	3	1		50 
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
2	1	1	10	8	5	4	
	2	4	5	7	5	4	
	3	7	4	5	5	4	
3	1	2	8	7	8	4	
	2	5	6	6	6	4	
	3	8	4	3	6	3	
4	1	2	7	5	9	8	
	2	4	6	5	9	4	
	3	5	1	4	8	1	
5	1	3	8	7	9	9	
	2	4	7	6	8	9	
	3	9	6	3	7	8	
6	1	3	10	10	7	5	
	2	4	9	7	7	4	
	3	9	9	4	5	4	
7	1	1	9	3	6	4	
	2	2	4	3	3	3	
	3	3	3	2	2	3	
8	1	2	6	8	8	4	
	2	5	3	3	8	2	
	3	9	3	3	7	2	
9	1	2	9	5	6	10	
	2	8	8	5	4	8	
	3	10	8	4	2	8	
10	1	2	3	6	9	8	
	2	4	2	4	8	6	
	3	5	2	3	6	3	
11	1	4	7	5	4	6	
	2	5	4	3	4	5	
	3	8	3	3	3	4	
12	1	4	3	7	6	10	
	2	8	3	7	5	6	
	3	10	3	7	4	2	
13	1	2	6	7	4	3	
	2	3	6	6	3	2	
	3	4	6	4	3	2	
14	1	1	8	7	3	7	
	2	3	7	5	2	6	
	3	4	7	5	2	5	
15	1	1	9	5	5	6	
	2	4	8	4	3	6	
	3	6	8	3	2	6	
16	1	3	10	10	6	7	
	2	5	7	5	6	4	
	3	10	7	4	5	3	
17	1	4	9	8	8	3	
	2	6	8	8	7	3	
	3	9	8	7	5	2	
18	1	4	5	7	7	4	
	2	7	4	7	5	2	
	3	9	2	7	4	2	
19	1	2	7	7	10	2	
	2	3	6	6	7	1	
	3	6	6	4	7	1	
20	1	6	6	9	8	9	
	2	8	2	7	8	9	
	3	10	2	7	4	8	
21	1	3	5	5	9	5	
	2	4	4	3	6	3	
	3	8	3	2	2	2	
22	1	4	7	7	9	5	
	2	6	5	4	8	3	
	3	7	5	2	8	2	
23	1	3	7	8	2	4	
	2	4	6	6	2	3	
	3	7	6	5	2	1	
24	1	1	3	10	4	10	
	2	2	2	8	4	7	
	3	7	2	8	2	3	
25	1	4	7	9	1	7	
	2	5	4	5	1	6	
	3	7	3	5	1	4	
26	1	3	9	1	9	3	
	2	4	8	1	9	3	
	3	6	7	1	9	3	
27	1	2	7	10	5	4	
	2	3	6	8	5	4	
	3	7	3	8	3	4	
28	1	3	8	5	7	7	
	2	7	7	3	7	7	
	3	10	6	3	7	6	
29	1	1	7	3	8	8	
	2	3	4	3	8	7	
	3	8	3	3	6	6	
30	1	5	10	3	9	4	
	2	6	7	2	8	3	
	3	9	4	1	7	3	
31	1	7	6	5	4	4	
	2	8	5	5	3	3	
	3	9	4	5	3	3	
32	1	1	8	5	3	8	
	2	3	8	5	2	6	
	3	4	6	5	2	5	
33	1	2	8	3	7	10	
	2	5	6	3	6	9	
	3	6	2	2	4	9	
34	1	4	8	6	6	9	
	2	7	8	4	5	4	
	3	9	8	2	5	2	
35	1	1	4	4	6	3	
	2	2	2	3	4	2	
	3	4	2	3	2	2	
36	1	4	1	5	8	7	
	2	5	1	2	8	5	
	3	9	1	1	8	4	
37	1	3	10	5	4	5	
	2	8	10	4	3	5	
	3	9	10	2	3	2	
38	1	1	3	10	6	8	
	2	2	1	9	6	8	
	3	3	1	7	5	5	
39	1	2	7	10	4	8	
	2	6	5	9	4	6	
	3	9	3	8	3	6	
40	1	1	6	9	8	8	
	2	4	6	6	6	8	
	3	5	2	6	4	8	
41	1	1	3	4	6	8	
	2	2	2	3	6	8	
	3	4	2	2	6	6	
42	1	3	6	7	5	10	
	2	8	6	7	5	8	
	3	9	6	5	5	7	
43	1	1	8	6	4	9	
	2	7	8	3	4	9	
	3	10	8	2	4	9	
44	1	2	7	8	9	9	
	2	5	4	8	8	7	
	3	7	1	6	6	5	
45	1	4	9	3	7	1	
	2	7	9	3	3	1	
	3	9	9	1	1	1	
46	1	5	9	9	10	10	
	2	6	7	8	9	9	
	3	7	7	8	9	8	
47	1	1	5	2	3	7	
	2	2	4	2	2	5	
	3	3	2	1	1	4	
48	1	2	10	3	6	2	
	2	8	9	2	6	2	
	3	9	8	2	2	2	
49	1	1	3	4	1	4	
	2	5	2	3	1	3	
	3	10	2	3	1	2	
50	1	5	8	5	7	10	
	2	6	8	5	5	7	
	3	7	8	5	4	7	
51	1	1	6	2	8	6	
	2	3	5	2	6	5	
	3	4	5	1	4	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	30	29	240	235

************************************************************************
