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
2	1	1	3	8	9	10	
	2	3	3	7	5	9	
	3	9	3	5	3	9	
3	1	1	6	3	9	3	
	2	2	5	2	6	3	
	3	10	3	1	6	3	
4	1	4	7	7	8	7	
	2	6	7	5	8	7	
	3	9	6	4	6	7	
5	1	1	4	1	8	4	
	2	5	4	1	8	3	
	3	6	2	1	8	4	
6	1	4	8	7	6	5	
	2	9	7	6	6	4	
	3	10	6	6	4	3	
7	1	1	8	8	6	9	
	2	3	4	6	3	5	
	3	5	1	5	2	5	
8	1	1	3	3	10	4	
	2	2	3	2	9	3	
	3	9	3	1	8	2	
9	1	1	3	7	7	9	
	2	9	1	7	4	4	
	3	10	1	6	4	3	
10	1	3	9	6	3	3	
	2	4	8	4	3	3	
	3	5	8	4	2	3	
11	1	7	9	9	6	4	
	2	8	5	8	6	4	
	3	10	5	8	6	2	
12	1	5	5	10	9	9	
	2	6	3	8	6	9	
	3	7	2	7	3	9	
13	1	3	8	8	8	2	
	2	6	8	6	4	2	
	3	7	6	4	3	2	
14	1	2	5	8	4	7	
	2	3	5	6	2	4	
	3	7	5	2	2	3	
15	1	5	7	8	3	8	
	2	7	3	6	3	6	
	3	8	1	4	2	4	
16	1	4	7	8	7	8	
	2	6	6	7	4	7	
	3	7	5	7	3	5	
17	1	4	6	8	5	9	
	2	9	4	6	5	8	
	3	10	4	4	5	8	
18	1	2	10	7	9	6	
	2	3	8	7	7	5	
	3	4	8	3	5	4	
19	1	2	9	9	9	5	
	2	5	7	8	6	3	
	3	6	4	7	4	3	
20	1	1	5	7	8	8	
	2	2	2	7	5	6	
	3	3	1	4	5	5	
21	1	2	7	7	4	3	
	2	8	4	6	4	3	
	3	10	3	4	3	2	
22	1	1	7	2	7	10	
	2	2	4	1	6	9	
	3	7	1	1	6	9	
23	1	3	8	4	3	4	
	2	7	4	4	2	3	
	3	8	2	4	2	1	
24	1	7	5	7	8	7	
	2	8	5	6	7	5	
	3	9	2	6	6	2	
25	1	4	8	8	2	10	
	2	6	7	8	2	9	
	3	9	6	8	2	9	
26	1	1	3	7	4	9	
	2	6	3	6	4	9	
	3	7	3	6	4	8	
27	1	3	7	6	8	5	
	2	6	3	6	8	4	
	3	7	3	6	6	1	
28	1	2	8	7	9	2	
	2	8	8	4	5	2	
	3	10	6	2	5	2	
29	1	7	9	4	8	9	
	2	8	8	2	5	9	
	3	9	8	2	1	9	
30	1	1	9	8	9	6	
	2	4	6	6	6	6	
	3	7	4	5	3	6	
31	1	1	10	10	4	3	
	2	8	8	9	3	2	
	3	9	8	8	3	2	
32	1	4	8	10	3	7	
	2	9	8	7	2	5	
	3	10	5	5	2	2	
33	1	3	9	5	6	5	
	2	8	8	4	5	5	
	3	10	5	4	5	4	
34	1	1	10	9	4	8	
	2	5	8	8	4	8	
	3	7	8	7	2	8	
35	1	2	8	6	4	6	
	2	3	7	5	3	5	
	3	5	6	4	3	3	
36	1	5	6	7	10	7	
	2	8	4	6	8	7	
	3	10	1	6	8	6	
37	1	5	5	9	6	9	
	2	7	5	6	5	9	
	3	8	3	3	4	8	
38	1	1	2	6	2	8	
	2	4	2	5	1	8	
	3	10	2	4	1	6	
39	1	2	9	8	5	7	
	2	3	8	7	4	5	
	3	5	7	7	3	3	
40	1	1	5	10	7	2	
	2	2	3	9	5	2	
	3	3	2	8	1	2	
41	1	5	2	9	8	6	
	2	7	2	8	6	5	
	3	8	2	7	3	2	
42	1	2	6	6	5	6	
	2	6	5	5	4	4	
	3	7	4	5	2	3	
43	1	6	8	9	5	8	
	2	7	5	8	4	7	
	3	9	1	8	2	5	
44	1	2	8	9	6	10	
	2	3	7	7	4	9	
	3	4	7	5	3	7	
45	1	4	7	7	6	8	
	2	9	7	6	5	7	
	3	10	5	5	4	7	
46	1	8	7	9	4	9	
	2	9	6	8	3	8	
	3	10	2	8	3	6	
47	1	4	5	10	7	7	
	2	5	3	9	4	4	
	3	10	2	7	3	3	
48	1	1	9	10	8	5	
	2	2	8	9	5	3	
	3	5	7	8	4	2	
49	1	4	10	1	10	2	
	2	8	8	1	4	1	
	3	9	6	1	2	1	
50	1	5	6	10	8	8	
	2	6	5	9	6	7	
	3	7	5	7	4	7	
51	1	2	3	5	6	7	
	2	3	2	5	6	6	
	3	5	2	5	6	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	55	58	253	274

************************************************************************
