jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 3 4 13 
2	3	3		15 6 5 
3	3	4		15 11 10 6 
4	3	4		15 11 10 8 
5	3	3		10 9 7 
6	3	5		22 18 17 16 14 
7	3	5		22 18 17 16 14 
8	3	4		22 18 14 12 
9	3	5		25 22 18 16 14 
10	3	3		22 18 12 
11	3	4		25 22 18 14 
12	3	3		25 20 16 
13	3	3		22 20 16 
14	3	5		28 26 21 20 19 
15	3	1		16 
16	3	4		28 26 21 19 
17	3	4		28 25 21 19 
18	3	4		29 28 21 20 
19	3	3		35 32 23 
20	3	3		32 31 24 
21	3	2		31 24 
22	3	8		38 37 36 35 34 31 30 29 
23	3	7		38 37 36 34 31 30 29 
24	3	3		37 36 27 
25	3	6		38 37 35 34 31 30 
26	3	5		38 37 36 31 30 
27	3	5		39 38 35 34 30 
28	3	4		41 36 34 33 
29	3	3		42 41 33 
30	3	2		41 33 
31	3	5		50 48 42 40 39 
32	3	5		51 47 43 41 38 
33	3	6		51 50 48 46 43 40 
34	3	7		51 50 48 47 46 43 42 
35	3	5		49 47 43 42 41 
36	3	7		50 49 48 47 46 45 43 
37	3	6		51 48 47 46 45 43 
38	3	5		50 49 46 45 44 
39	3	4		47 46 45 43 
40	3	4		49 47 45 44 
41	3	2		48 46 
42	3	2		45 44 
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
2	1	6	4	9	0	3	
	2	9	2	8	1	0	
	3	10	1	8	1	0	
3	1	3	4	4	0	9	
	2	5	4	4	0	8	
	3	8	2	4	0	9	
4	1	6	3	6	6	0	
	2	7	3	5	0	9	
	3	9	2	1	0	9	
5	1	1	9	8	0	9	
	2	5	8	6	4	0	
	3	6	8	3	0	7	
6	1	6	5	9	0	7	
	2	7	4	5	0	7	
	3	9	4	2	0	5	
7	1	2	5	6	8	0	
	2	7	5	5	0	5	
	3	10	3	3	5	0	
8	1	1	6	8	0	8	
	2	3	6	6	5	0	
	3	9	6	6	0	8	
9	1	2	6	2	0	6	
	2	8	6	2	0	5	
	3	10	6	2	0	4	
10	1	2	5	9	4	0	
	2	5	4	7	3	0	
	3	6	3	7	0	8	
11	1	4	2	6	0	8	
	2	6	1	5	4	0	
	3	9	1	4	0	5	
12	1	5	4	8	1	0	
	2	7	3	7	1	0	
	3	9	2	6	0	4	
13	1	1	8	4	0	8	
	2	8	6	3	0	8	
	3	10	6	2	5	0	
14	1	3	5	3	0	6	
	2	4	3	2	0	5	
	3	5	3	1	7	0	
15	1	3	10	8	0	5	
	2	6	4	6	0	4	
	3	9	3	6	3	0	
16	1	1	6	7	1	0	
	2	2	5	6	0	6	
	3	10	5	3	1	0	
17	1	3	7	7	0	8	
	2	4	4	4	0	6	
	3	7	2	2	5	0	
18	1	4	10	5	8	0	
	2	5	10	4	5	0	
	3	8	10	4	4	0	
19	1	2	5	4	0	7	
	2	6	3	4	0	7	
	3	9	3	4	3	0	
20	1	3	8	10	8	0	
	2	9	5	5	0	7	
	3	10	3	1	0	4	
21	1	3	8	6	0	8	
	2	4	8	5	5	0	
	3	5	8	5	0	4	
22	1	2	7	9	0	8	
	2	6	7	5	0	7	
	3	7	5	4	0	7	
23	1	1	8	7	4	0	
	2	6	8	7	3	0	
	3	10	7	7	0	6	
24	1	5	7	10	0	8	
	2	6	4	5	7	0	
	3	7	2	4	7	0	
25	1	4	9	8	0	9	
	2	5	6	7	0	9	
	3	8	4	7	7	0	
26	1	3	9	9	5	0	
	2	7	6	8	3	0	
	3	8	3	7	3	0	
27	1	4	10	8	8	0	
	2	6	10	5	4	0	
	3	10	10	1	0	4	
28	1	3	6	5	0	7	
	2	4	6	3	0	6	
	3	8	6	1	0	6	
29	1	2	10	6	10	0	
	2	5	8	5	5	0	
	3	8	8	5	0	8	
30	1	2	10	2	9	0	
	2	7	9	1	6	0	
	3	8	7	1	4	0	
31	1	2	2	3	9	0	
	2	4	1	3	0	6	
	3	7	1	3	5	0	
32	1	7	4	5	0	3	
	2	9	4	4	5	0	
	3	10	4	4	0	2	
33	1	4	2	9	7	0	
	2	5	1	9	4	0	
	3	9	1	9	3	0	
34	1	4	6	4	4	0	
	2	4	5	3	0	8	
	3	6	5	3	2	0	
35	1	2	8	10	9	0	
	2	6	8	8	0	6	
	3	7	6	8	0	6	
36	1	1	10	2	0	4	
	2	4	4	2	2	0	
	3	6	2	2	0	2	
37	1	4	4	5	4	0	
	2	5	3	4	4	0	
	3	7	1	1	0	2	
38	1	2	6	7	0	9	
	2	4	5	4	0	8	
	3	10	4	1	0	7	
39	1	2	5	7	5	0	
	2	3	4	5	0	5	
	3	3	4	4	1	0	
40	1	2	8	4	0	3	
	2	8	6	4	0	2	
	3	8	2	4	5	0	
41	1	1	7	8	0	2	
	2	5	6	7	4	0	
	3	9	4	6	3	0	
42	1	5	4	5	5	0	
	2	6	3	5	0	6	
	3	7	2	4	2	0	
43	1	3	4	7	9	0	
	2	4	4	5	0	5	
	3	8	3	3	8	0	
44	1	6	3	10	0	8	
	2	7	1	7	8	0	
	3	10	1	6	0	4	
45	1	3	7	8	4	0	
	2	5	4	5	3	0	
	3	5	4	2	0	3	
46	1	1	10	9	0	2	
	2	6	8	8	0	2	
	3	7	5	8	5	0	
47	1	5	8	9	5	0	
	2	6	5	7	0	3	
	3	9	2	5	3	0	
48	1	3	9	7	0	6	
	2	4	7	4	0	5	
	3	9	5	4	0	5	
49	1	3	6	8	0	6	
	2	4	5	7	0	6	
	3	7	4	7	1	0	
50	1	4	6	7	8	0	
	2	6	4	6	8	0	
	3	10	4	5	0	3	
51	1	2	7	7	7	0	
	2	6	5	6	6	0	
	3	6	3	6	0	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	29	28	124	160

************************************************************************
