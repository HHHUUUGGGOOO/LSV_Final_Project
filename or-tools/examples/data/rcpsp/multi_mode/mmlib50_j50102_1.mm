jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 4 5 7 8 
2	3	5		16 11 9 6 3 
3	3	8		24 22 19 15 14 13 12 10 
4	3	7		24 22 19 16 14 13 10 
5	3	6		24 19 16 14 13 12 
6	3	4		24 14 13 10 
7	3	4		24 19 12 10 
8	3	3		24 14 10 
9	3	2		17 14 
10	3	3		28 23 17 
11	3	3		23 21 18 
12	3	4		26 23 21 20 
13	3	3		28 23 18 
14	3	5		32 26 25 23 21 
15	3	2		28 18 
16	3	4		32 26 25 21 
17	3	1		18 
18	3	2		26 20 
19	3	4		35 32 26 25 
20	3	4		35 32 29 25 
21	3	5		35 33 29 28 27 
22	3	3		32 28 23 
23	3	5		34 33 31 30 29 
24	3	5		33 32 31 30 29 
25	3	3		34 33 27 
26	3	4		43 36 34 29 
27	3	3		36 31 30 
28	3	5		43 38 37 36 34 
29	3	4		44 40 38 37 
30	3	5		46 44 43 41 38 
31	3	3		44 40 37 
32	3	4		44 41 40 39 
33	3	2		41 36 
34	3	3		41 40 39 
35	3	2		44 37 
36	3	3		46 44 39 
37	3	2		41 39 
38	3	1		39 
39	3	4		51 50 49 42 
40	3	4		51 48 46 45 
41	3	3		50 48 45 
42	3	2		48 45 
43	3	2		48 45 
44	3	2		49 47 
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
2	1	1	0	6	6	2	
	2	6	0	4	5	2	
	3	10	3	0	5	1	
3	1	1	0	6	6	6	
	2	2	0	5	5	3	
	3	7	2	0	5	2	
4	1	1	5	0	8	6	
	2	3	3	0	7	6	
	3	8	0	3	6	5	
5	1	2	0	6	2	7	
	2	4	6	0	2	5	
	3	8	6	0	2	3	
6	1	6	0	6	8	7	
	2	8	3	0	5	6	
	3	9	0	4	5	4	
7	1	3	0	2	9	7	
	2	5	0	2	8	6	
	3	7	0	2	8	3	
8	1	5	0	6	10	9	
	2	8	0	5	8	7	
	3	9	3	0	8	6	
9	1	1	8	0	5	5	
	2	7	0	7	4	3	
	3	8	0	2	4	3	
10	1	1	8	0	8	4	
	2	6	4	0	6	4	
	3	10	0	3	5	3	
11	1	3	6	0	5	8	
	2	4	0	5	5	7	
	3	10	0	3	5	3	
12	1	7	0	9	9	6	
	2	7	6	0	9	6	
	3	9	0	6	7	6	
13	1	6	0	6	3	10	
	2	7	6	0	3	7	
	3	8	0	3	3	2	
14	1	1	10	0	6	7	
	2	2	0	4	5	6	
	3	7	9	0	5	5	
15	1	5	0	9	7	9	
	2	8	0	9	5	5	
	3	10	0	8	2	1	
16	1	1	7	0	6	6	
	2	6	0	3	4	4	
	3	8	0	1	3	1	
17	1	4	0	5	6	9	
	2	8	0	5	4	6	
	3	10	0	4	3	5	
18	1	2	0	2	7	3	
	2	4	5	0	6	3	
	3	6	0	2	6	3	
19	1	1	0	7	9	5	
	2	4	0	6	8	5	
	3	10	0	4	6	5	
20	1	2	8	0	3	4	
	2	6	4	0	3	4	
	3	10	1	0	1	4	
21	1	2	7	0	9	9	
	2	4	7	0	7	5	
	3	10	6	0	5	3	
22	1	2	2	0	10	2	
	2	3	2	0	7	2	
	3	10	0	5	4	2	
23	1	3	7	0	2	3	
	2	5	7	0	2	2	
	3	7	0	3	2	1	
24	1	3	6	0	4	5	
	2	8	0	8	2	4	
	3	8	3	0	2	3	
25	1	3	8	0	8	5	
	2	6	0	8	8	4	
	3	10	6	0	4	4	
26	1	5	0	8	9	4	
	2	7	0	7	9	2	
	3	9	5	0	9	2	
27	1	5	9	0	9	9	
	2	7	9	0	7	6	
	3	8	8	0	7	3	
28	1	1	0	9	9	9	
	2	7	0	8	5	8	
	3	8	4	0	3	7	
29	1	3	8	0	3	2	
	2	3	0	7	2	2	
	3	6	0	7	2	1	
30	1	2	1	0	9	9	
	2	4	0	8	9	4	
	3	9	1	0	7	3	
31	1	4	7	0	5	8	
	2	9	0	7	5	7	
	3	10	0	7	1	6	
32	1	6	0	7	7	7	
	2	7	0	5	7	7	
	3	9	0	1	7	7	
33	1	2	0	8	6	10	
	2	6	4	0	5	8	
	3	8	3	0	5	8	
34	1	1	0	4	9	3	
	2	4	0	4	9	2	
	3	5	7	0	9	2	
35	1	4	0	7	7	5	
	2	8	3	0	7	4	
	3	8	0	3	7	3	
36	1	3	0	9	8	8	
	2	5	6	0	8	8	
	3	8	6	0	8	7	
37	1	2	0	9	3	8	
	2	6	6	0	3	7	
	3	10	6	0	3	4	
38	1	1	0	5	5	10	
	2	3	8	0	4	9	
	3	8	7	0	3	7	
39	1	2	10	0	2	4	
	2	3	0	4	2	3	
	3	6	0	4	2	2	
40	1	5	0	6	8	7	
	2	6	5	0	7	4	
	3	9	3	0	6	3	
41	1	1	0	4	4	10	
	2	2	0	3	4	10	
	3	5	4	0	3	10	
42	1	2	0	5	8	9	
	2	5	0	5	6	9	
	3	10	5	0	3	9	
43	1	2	0	4	5	5	
	2	3	0	2	4	5	
	3	4	4	0	3	4	
44	1	1	8	0	7	7	
	2	4	8	0	7	5	
	3	9	8	0	3	4	
45	1	2	0	7	6	10	
	2	8	7	0	6	9	
	3	10	3	0	6	8	
46	1	3	0	8	7	6	
	2	5	8	0	7	5	
	3	6	7	0	6	4	
47	1	2	0	4	10	8	
	2	3	0	4	10	6	
	3	4	0	4	10	2	
48	1	1	9	0	10	7	
	2	2	8	0	9	7	
	3	9	0	4	9	6	
49	1	3	0	7	7	9	
	2	9	7	0	6	5	
	3	10	7	0	3	3	
50	1	4	0	4	9	10	
	2	5	0	4	6	10	
	3	6	3	0	5	10	
51	1	1	2	0	9	9	
	2	3	2	0	8	9	
	3	9	0	4	8	9	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	31	36	313	306

************************************************************************
