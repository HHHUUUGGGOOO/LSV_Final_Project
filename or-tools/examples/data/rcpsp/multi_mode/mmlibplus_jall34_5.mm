jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	14		2 3 4 5 6 7 8 9 10 12 17 18 24 26 
2	3	13		51 48 45 32 29 28 23 22 21 20 19 16 15 
3	3	11		51 48 46 45 43 39 29 27 23 16 15 
4	3	10		50 49 47 45 34 30 27 25 23 11 
5	3	9		51 50 39 37 29 27 23 16 13 
6	3	9		49 47 42 30 28 23 21 19 14 
7	3	13		51 46 43 42 40 39 38 37 33 32 30 29 28 
8	3	13		49 47 46 45 43 42 40 39 37 33 32 29 27 
9	3	8		48 45 44 43 39 37 29 16 
10	3	7		49 44 39 37 31 29 16 
11	3	12		51 46 44 42 41 40 39 38 37 32 31 29 
12	3	8		48 44 42 40 38 36 29 20 
13	3	10		48 46 45 43 42 40 38 35 32 30 
14	3	8		45 41 40 39 38 37 36 29 
15	3	8		50 49 47 40 38 37 36 35 
16	3	6		47 42 41 38 33 30 
17	3	6		48 44 40 39 31 29 
18	3	5		42 41 39 37 35 
19	3	4		50 43 38 35 
20	3	4		49 43 41 37 
21	3	4		46 40 39 38 
22	3	4		41 40 39 36 
23	3	3		44 40 31 
24	3	3		37 35 32 
25	3	3		37 36 35 
26	3	3		45 39 37 
27	3	2		38 35 
28	3	2		41 36 
29	3	1		35 
30	3	1		36 
31	3	1		35 
32	3	1		36 
33	3	1		35 
34	3	1		48 
35	3	1		52 
36	3	1		52 
37	3	1		52 
38	3	1		52 
39	3	1		52 
40	3	1		52 
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
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	4	3	6	4	10	8	8	
	2	7	2	3	4	9	5	8	
	3	9	2	2	3	8	3	7	
3	1	4	4	5	7	6	6	4	
	2	6	4	5	7	6	5	4	
	3	9	4	3	3	6	5	4	
4	1	5	3	6	8	5	9	9	
	2	6	1	5	6	4	5	7	
	3	10	1	2	3	3	2	6	
5	1	1	10	6	2	5	1	3	
	2	5	7	3	2	4	1	1	
	3	10	2	3	2	2	1	1	
6	1	6	5	6	3	3	6	2	
	2	7	3	5	2	2	6	2	
	3	10	3	5	2	1	5	2	
7	1	1	6	3	8	10	6	3	
	2	4	5	2	7	5	6	2	
	3	8	5	2	3	3	6	2	
8	1	1	5	9	1	1	8	5	
	2	6	5	7	1	1	8	4	
	3	8	5	6	1	1	6	4	
9	1	3	6	3	7	10	5	4	
	2	5	4	2	6	6	3	3	
	3	9	2	2	6	5	2	3	
10	1	6	7	4	9	9	3	5	
	2	8	7	3	8	8	3	3	
	3	9	6	3	8	6	3	2	
11	1	4	7	4	10	3	5	5	
	2	5	7	4	10	2	5	5	
	3	6	4	4	10	2	5	4	
12	1	5	2	7	7	8	9	8	
	2	7	2	7	4	8	8	6	
	3	8	2	7	3	8	7	6	
13	1	5	9	6	10	5	10	9	
	2	8	8	6	8	5	10	9	
	3	9	8	6	5	3	10	8	
14	1	2	6	7	9	1	8	7	
	2	5	5	7	5	1	7	4	
	3	6	5	4	2	1	7	4	
15	1	4	10	4	7	8	8	5	
	2	5	8	3	5	6	7	5	
	3	8	7	2	3	4	7	5	
16	1	4	10	8	7	5	8	9	
	2	7	10	7	7	5	6	7	
	3	8	10	5	5	4	6	4	
17	1	6	7	6	7	2	8	5	
	2	8	5	6	3	1	7	4	
	3	9	5	4	3	1	1	2	
18	1	1	5	5	3	5	5	6	
	2	2	5	4	3	3	3	5	
	3	8	2	3	2	3	3	5	
19	1	1	7	7	6	6	8	4	
	2	4	6	6	4	5	5	3	
	3	6	5	5	4	2	2	3	
20	1	2	9	7	3	8	6	10	
	2	6	8	7	2	7	4	7	
	3	7	7	7	2	4	4	2	
21	1	3	7	7	2	10	8	5	
	2	5	4	7	2	8	8	4	
	3	9	4	6	2	6	8	3	
22	1	2	7	10	9	9	10	6	
	2	4	6	7	6	7	8	3	
	3	9	5	4	6	6	8	1	
23	1	7	5	7	5	9	7	6	
	2	8	3	7	5	9	6	4	
	3	9	2	6	3	9	5	3	
24	1	3	5	8	9	9	8	3	
	2	6	5	6	8	8	7	1	
	3	10	5	5	7	8	6	1	
25	1	2	4	7	5	5	8	7	
	2	4	3	6	3	4	7	7	
	3	9	3	3	2	4	5	5	
26	1	2	9	4	2	4	9	4	
	2	3	6	4	1	3	9	4	
	3	9	3	4	1	3	9	4	
27	1	5	10	6	6	3	8	7	
	2	7	9	5	5	3	6	6	
	3	10	9	5	4	3	5	5	
28	1	1	5	9	9	7	8	9	
	2	2	3	8	7	7	8	6	
	3	10	3	8	3	5	6	4	
29	1	6	4	7	3	1	8	6	
	2	8	4	7	2	1	8	3	
	3	9	4	5	2	1	7	1	
30	1	6	9	4	6	8	4	5	
	2	8	7	2	6	5	4	4	
	3	10	7	1	6	2	4	4	
31	1	2	7	4	3	3	7	3	
	2	4	6	3	3	2	6	1	
	3	5	5	2	2	2	6	1	
32	1	2	3	3	9	9	4	7	
	2	5	2	2	7	6	3	7	
	3	6	2	2	7	5	2	5	
33	1	1	7	6	7	5	6	8	
	2	2	7	3	6	4	5	4	
	3	3	7	1	6	3	3	4	
34	1	4	10	10	4	6	8	9	
	2	5	10	6	3	4	6	8	
	3	10	10	5	2	3	6	7	
35	1	6	10	3	7	2	8	4	
	2	8	5	2	4	2	8	4	
	3	9	1	1	2	2	8	3	
36	1	6	3	7	7	5	7	7	
	2	8	2	7	6	4	6	7	
	3	9	1	7	6	2	6	6	
37	1	5	4	4	9	5	8	6	
	2	8	4	3	8	4	3	3	
	3	10	4	2	6	3	1	2	
38	1	5	10	7	6	6	6	6	
	2	6	10	5	5	4	5	5	
	3	8	10	4	5	3	3	5	
39	1	3	7	10	8	3	4	9	
	2	4	7	10	6	3	4	7	
	3	10	7	10	1	3	4	6	
40	1	3	5	6	3	9	5	4	
	2	5	5	4	2	9	4	2	
	3	9	4	2	2	9	4	1	
41	1	3	9	5	8	4	7	6	
	2	9	7	5	6	4	5	6	
	3	10	6	5	5	2	5	6	
42	1	3	10	8	7	10	9	3	
	2	4	10	7	5	6	7	3	
	3	7	10	4	3	2	5	2	
43	1	4	4	8	6	6	8	10	
	2	5	4	8	6	5	4	8	
	3	9	4	6	1	5	3	5	
44	1	1	8	7	4	10	7	1	
	2	2	8	6	3	9	4	1	
	3	7	8	6	2	9	4	1	
45	1	3	2	4	7	8	6	5	
	2	7	1	4	3	4	4	4	
	3	9	1	4	2	2	2	4	
46	1	4	3	7	7	4	4	2	
	2	7	1	5	3	4	2	1	
	3	10	1	5	1	2	2	1	
47	1	1	2	6	4	8	8	7	
	2	5	2	5	4	8	7	6	
	3	7	2	2	4	6	7	5	
48	1	1	7	9	5	5	6	6	
	2	2	6	9	4	5	5	6	
	3	9	4	7	2	5	5	5	
49	1	3	9	8	7	6	5	8	
	2	4	7	7	7	5	5	5	
	3	8	7	6	6	5	2	3	
50	1	1	5	5	5	9	4	8	
	2	4	5	5	5	8	2	5	
	3	5	4	2	5	8	2	1	
51	1	5	9	4	3	9	7	1	
	2	9	8	3	1	7	6	1	
	3	10	7	3	1	5	3	1	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	72	70	207	226	258	206

************************************************************************
