jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 7 9 10 11 13 16 
2	3	7		29 24 20 19 17 14 6 
3	3	6		20 19 18 15 14 5 
4	3	4		24 22 12 8 
5	3	9		35 32 30 29 27 26 25 23 21 
6	3	5		35 32 22 21 18 
7	3	5		35 32 21 20 18 
8	3	4		29 23 21 19 
9	3	8		50 49 40 31 30 27 26 24 
10	3	4		35 27 23 21 
11	3	6		49 31 30 28 27 23 
12	3	4		50 49 27 18 
13	3	3		32 23 20 
14	3	7		50 49 40 35 30 28 27 
15	3	5		49 35 28 27 23 
16	3	5		49 34 31 28 23 
17	3	3		35 27 23 
18	3	8		51 40 37 36 34 31 28 26 
19	3	8		49 47 40 39 38 35 32 27 
20	3	6		51 50 49 46 28 27 
21	3	8		49 48 40 37 36 34 31 28 
22	3	3		49 40 25 
23	3	11		51 50 48 47 44 42 40 39 38 37 36 
24	3	5		46 37 36 34 28 
25	3	9		50 48 44 39 38 37 36 34 33 
26	3	7		48 47 46 44 43 38 33 
27	3	6		48 45 37 36 34 33 
28	3	5		47 44 39 38 33 
29	3	6		49 44 43 42 41 40 
30	3	5		51 43 42 37 36 
31	3	3		47 42 39 
32	3	2		42 34 
33	3	2		42 41 
34	3	2		43 41 
35	3	2		44 42 
36	3	1		41 
37	3	1		41 
38	3	1		45 
39	3	1		43 
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
2	1	3	6	8	6	9	
	2	4	5	6	5	8	
	3	9	5	4	3	8	
3	1	2	7	7	9	7	
	2	5	6	7	6	5	
	3	7	6	5	6	3	
4	1	4	9	8	7	7	
	2	5	9	6	7	5	
	3	6	9	5	7	1	
5	1	2	8	9	10	4	
	2	3	5	7	10	3	
	3	5	3	3	10	2	
6	1	4	9	1	3	6	
	2	5	8	1	1	6	
	3	9	8	1	1	5	
7	1	1	6	5	1	9	
	2	3	5	3	1	8	
	3	10	5	3	1	7	
8	1	3	8	9	7	1	
	2	6	3	4	5	1	
	3	10	1	3	4	1	
9	1	5	6	7	6	5	
	2	7	5	5	4	4	
	3	8	5	4	3	2	
10	1	1	8	7	7	5	
	2	4	6	6	7	4	
	3	10	4	6	7	3	
11	1	4	7	7	3	2	
	2	5	5	4	3	2	
	3	7	5	4	2	2	
12	1	1	9	10	3	7	
	2	5	7	7	2	6	
	3	9	7	6	2	3	
13	1	1	6	7	5	7	
	2	3	5	7	5	6	
	3	6	5	7	4	6	
14	1	4	9	5	4	2	
	2	8	8	5	4	1	
	3	10	7	5	3	1	
15	1	1	2	8	8	3	
	2	4	1	8	4	3	
	3	5	1	6	3	3	
16	1	1	7	6	5	10	
	2	5	5	4	4	7	
	3	6	5	3	4	1	
17	1	4	8	3	5	10	
	2	7	8	3	5	8	
	3	10	8	2	4	8	
18	1	4	10	5	4	9	
	2	5	8	4	3	7	
	3	7	8	3	3	7	
19	1	8	5	6	8	10	
	2	9	5	6	6	9	
	3	10	3	5	3	9	
20	1	2	10	10	8	7	
	2	8	9	9	5	4	
	3	9	9	9	2	4	
21	1	6	3	4	5	6	
	2	7	3	3	5	6	
	3	8	2	3	4	6	
22	1	1	5	10	6	6	
	2	3	5	8	6	5	
	3	5	4	7	4	5	
23	1	3	5	8	1	3	
	2	4	3	8	1	2	
	3	8	3	8	1	1	
24	1	1	7	2	9	7	
	2	2	6	1	7	5	
	3	3	6	1	5	3	
25	1	1	7	6	6	9	
	2	4	3	6	4	9	
	3	9	1	6	1	9	
26	1	3	8	3	3	9	
	2	5	5	3	3	6	
	3	8	4	3	2	2	
27	1	4	3	8	10	1	
	2	5	3	5	7	1	
	3	6	3	3	3	1	
28	1	4	5	8	8	4	
	2	7	5	6	4	4	
	3	10	5	6	1	2	
29	1	1	10	6	5	9	
	2	2	8	5	4	9	
	3	6	5	5	2	9	
30	1	3	10	3	9	4	
	2	8	5	2	8	3	
	3	10	3	2	5	3	
31	1	4	7	2	4	7	
	2	9	6	1	4	3	
	3	10	3	1	3	2	
32	1	2	5	7	7	2	
	2	7	5	5	6	2	
	3	8	3	3	6	1	
33	1	1	10	5	7	9	
	2	2	8	4	6	9	
	3	5	6	4	4	9	
34	1	4	6	8	3	5	
	2	9	6	7	2	3	
	3	10	6	7	2	2	
35	1	3	7	5	7	7	
	2	5	4	5	6	7	
	3	6	4	5	5	7	
36	1	1	6	3	5	10	
	2	5	3	2	5	9	
	3	7	3	2	1	9	
37	1	1	7	5	7	2	
	2	3	5	5	5	2	
	3	10	3	3	4	2	
38	1	6	2	8	7	7	
	2	7	2	8	6	6	
	3	9	2	7	5	6	
39	1	2	9	2	6	5	
	2	9	9	2	6	4	
	3	10	8	1	6	4	
40	1	1	9	3	1	5	
	2	2	8	2	1	4	
	3	4	8	2	1	3	
41	1	2	3	10	4	4	
	2	5	2	9	4	4	
	3	8	2	9	2	4	
42	1	2	7	8	7	9	
	2	4	7	6	4	7	
	3	6	7	5	4	5	
43	1	2	10	6	9	6	
	2	3	6	5	7	4	
	3	5	6	1	7	4	
44	1	4	4	8	8	6	
	2	5	4	7	6	5	
	3	8	4	6	4	4	
45	1	6	4	6	2	10	
	2	7	3	6	2	7	
	3	10	3	5	2	6	
46	1	2	8	4	9	9	
	2	3	3	2	6	9	
	3	4	3	2	3	7	
47	1	2	9	3	7	9	
	2	3	5	2	4	8	
	3	5	1	1	2	8	
48	1	2	7	1	8	3	
	2	5	6	1	7	2	
	3	7	3	1	6	2	
49	1	4	6	8	8	8	
	2	5	4	5	4	7	
	3	8	3	4	4	7	
50	1	7	2	9	10	8	
	2	9	2	8	7	7	
	3	10	2	6	5	7	
51	1	3	8	6	6	8	
	2	4	7	6	4	6	
	3	10	6	6	4	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	52	49	272	293

************************************************************************
