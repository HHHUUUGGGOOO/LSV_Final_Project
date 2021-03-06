jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 8 9 10 11 14 
2	3	7		29 21 19 18 15 13 12 
3	3	5		20 18 15 13 7 
4	3	7		29 28 25 24 23 18 16 
5	3	6		24 22 20 17 16 13 
6	3	6		29 25 22 21 18 16 
7	3	8		43 32 29 27 25 22 21 19 
8	3	8		43 32 29 28 25 23 22 20 
9	3	6		29 28 25 22 18 16 
10	3	6		41 32 29 27 25 16 
11	3	9		43 41 36 32 31 28 27 26 25 
12	3	4		32 27 22 16 
13	3	8		43 41 40 36 32 31 27 25 
14	3	8		51 43 41 40 33 30 28 23 
15	3	9		51 47 43 41 38 36 30 27 26 
16	3	8		43 42 39 36 34 31 30 26 
17	3	5		47 41 27 26 25 
18	3	7		47 43 41 38 32 30 26 
19	3	10		51 49 48 47 41 39 38 36 33 30 
20	3	6		51 47 38 34 30 26 
21	3	7		49 48 40 39 33 30 28 
22	3	5		47 41 38 30 26 
23	3	6		49 48 47 36 35 27 
24	3	8		49 48 47 43 39 38 35 34 
25	3	5		49 48 38 33 30 
26	3	6		50 49 48 46 40 33 
27	3	3		42 39 34 
28	3	4		47 38 37 35 
29	3	4		49 47 45 36 
30	3	4		50 46 45 44 
31	3	4		51 48 47 44 
32	3	3		46 39 37 
33	3	2		37 35 
34	3	2		46 37 
35	3	2		45 44 
36	3	2		46 44 
37	3	1		45 
38	3	1		44 
39	3	1		45 
40	3	1		44 
41	3	1		44 
42	3	1		44 
43	3	1		44 
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
2	1	1	0	9	4	2	
	2	3	5	0	3	2	
	3	5	0	9	3	2	
3	1	1	0	7	7	7	
	2	10	3	0	7	6	
	3	10	0	4	6	6	
4	1	1	0	6	5	6	
	2	3	0	5	4	5	
	3	9	6	0	3	5	
5	1	2	6	0	4	9	
	2	8	5	0	3	8	
	3	10	0	2	3	4	
6	1	1	0	1	8	2	
	2	2	5	0	5	2	
	3	3	2	0	5	2	
7	1	2	0	9	2	9	
	2	4	8	0	2	8	
	3	6	7	0	2	8	
8	1	2	0	10	9	10	
	2	3	0	7	6	6	
	3	6	0	7	5	6	
9	1	1	0	9	7	3	
	2	8	4	0	7	2	
	3	9	0	3	7	2	
10	1	2	0	7	4	9	
	2	3	8	0	3	8	
	3	10	0	5	3	8	
11	1	5	0	9	8	4	
	2	5	4	0	6	4	
	3	9	2	0	5	1	
12	1	2	0	9	6	5	
	2	8	3	0	3	4	
	3	10	1	0	3	4	
13	1	2	0	5	8	2	
	2	4	0	5	6	2	
	3	5	7	0	4	2	
14	1	2	9	0	5	10	
	2	8	0	10	5	9	
	3	9	0	10	5	8	
15	1	2	7	0	6	5	
	2	3	5	0	5	4	
	3	7	5	0	2	1	
16	1	1	9	0	9	4	
	2	2	0	7	9	3	
	3	8	0	6	8	3	
17	1	2	0	5	8	8	
	2	3	9	0	8	3	
	3	10	8	0	8	3	
18	1	2	10	0	10	5	
	2	7	10	0	8	3	
	3	10	10	0	6	3	
19	1	7	4	0	8	7	
	2	8	4	0	6	6	
	3	9	4	0	6	5	
20	1	5	8	0	5	4	
	2	6	8	0	2	3	
	3	7	6	0	1	3	
21	1	2	7	0	1	6	
	2	7	4	0	1	6	
	3	8	3	0	1	5	
22	1	4	8	0	4	7	
	2	7	0	8	2	6	
	3	8	0	8	2	4	
23	1	2	0	9	8	10	
	2	4	0	4	4	9	
	3	8	5	0	4	9	
24	1	2	5	0	7	10	
	2	7	5	0	4	10	
	3	10	5	0	3	10	
25	1	6	0	4	9	8	
	2	7	6	0	6	7	
	3	8	0	3	5	5	
26	1	1	0	6	8	7	
	2	4	0	5	4	5	
	3	7	6	0	4	5	
27	1	1	0	6	10	9	
	2	2	6	0	9	4	
	3	10	2	0	8	3	
28	1	5	6	0	9	10	
	2	7	0	4	6	8	
	3	10	5	0	5	8	
29	1	2	7	0	2	9	
	2	3	7	0	2	8	
	3	6	7	0	2	7	
30	1	3	0	5	6	6	
	2	7	0	3	6	5	
	3	8	0	2	5	3	
31	1	2	0	3	4	10	
	2	3	7	0	4	9	
	3	4	0	3	4	9	
32	1	3	4	0	4	5	
	2	9	0	3	3	5	
	3	9	1	0	1	5	
33	1	2	10	0	3	9	
	2	8	7	0	3	8	
	3	10	0	2	3	6	
34	1	3	9	0	4	6	
	2	5	0	5	3	6	
	3	10	0	4	2	6	
35	1	1	0	9	3	9	
	2	2	3	0	3	8	
	3	10	3	0	3	7	
36	1	4	0	5	9	9	
	2	10	7	0	7	9	
	3	10	0	4	7	9	
37	1	2	6	0	3	4	
	2	6	0	2	2	4	
	3	8	0	2	2	3	
38	1	3	5	0	10	5	
	2	3	0	5	7	5	
	3	5	0	4	3	4	
39	1	2	7	0	8	7	
	2	3	3	0	7	6	
	3	7	3	0	6	4	
40	1	2	4	0	2	7	
	2	3	3	0	1	6	
	3	5	0	3	1	3	
41	1	2	3	0	3	2	
	2	5	3	0	3	1	
	3	6	0	3	3	2	
42	1	1	0	5	9	6	
	2	3	7	0	7	5	
	3	4	5	0	6	5	
43	1	5	0	7	4	6	
	2	6	1	0	3	4	
	3	7	0	5	3	3	
44	1	7	0	9	3	8	
	2	8	0	9	3	6	
	3	10	3	0	2	3	
45	1	2	8	0	9	7	
	2	4	0	7	7	4	
	3	9	0	6	6	4	
46	1	3	6	0	6	6	
	2	3	0	4	4	6	
	3	8	2	0	2	4	
47	1	2	6	0	7	9	
	2	3	5	0	4	4	
	3	8	0	3	3	2	
48	1	3	0	8	8	5	
	2	4	6	0	8	3	
	3	5	0	3	8	3	
49	1	1	0	7	10	4	
	2	7	2	0	9	2	
	3	7	0	3	8	2	
50	1	6	0	7	6	6	
	2	9	6	0	3	6	
	3	10	4	0	3	5	
51	1	1	0	2	4	10	
	2	3	0	1	4	6	
	3	8	6	0	4	2	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	45	55	255	280

************************************************************************
