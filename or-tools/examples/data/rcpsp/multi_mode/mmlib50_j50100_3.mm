jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 3 4 8 
2	3	6		16 13 11 10 7 5 
3	3	6		14 13 12 10 7 6 
4	3	6		18 16 13 12 11 10 
5	3	3		17 12 9 
6	3	4		22 18 16 11 
7	3	5		20 19 18 17 15 
8	3	3		22 15 12 
9	3	4		29 22 20 15 
10	3	4		22 20 19 17 
11	3	3		29 20 15 
12	3	5		29 24 21 20 19 
13	3	5		29 24 21 20 19 
14	3	4		34 22 20 18 
15	3	4		28 24 23 21 
16	3	3		23 21 20 
17	3	6		34 29 28 26 25 24 
18	3	5		29 28 26 25 24 
19	3	5		34 33 28 27 25 
20	3	4		33 31 28 26 
21	3	3		33 26 25 
22	3	2		26 25 
23	3	4		34 33 31 30 
24	3	2		33 27 
25	3	3		36 31 30 
26	3	2		38 27 
27	3	3		40 36 30 
28	3	3		40 36 30 
29	3	4		39 38 36 32 
30	3	2		39 32 
31	3	5		51 43 40 38 35 
32	3	5		51 47 43 37 35 
33	3	5		51 41 38 37 36 
34	3	4		43 38 37 36 
35	3	5		50 49 46 44 41 
36	3	5		50 49 47 46 44 
37	3	4		50 49 44 42 
38	3	4		49 47 46 44 
39	3	3		49 45 44 
40	3	2		46 42 
41	3	1		42 
42	3	1		45 
43	3	1		44 
44	3	1		48 
45	3	1		48 
46	3	1		48 
47	3	1		48 
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
2	1	1	8	0	7	8	
	2	3	7	0	6	6	
	3	5	0	3	5	5	
3	1	2	6	0	5	3	
	2	3	0	5	3	2	
	3	4	5	0	1	2	
4	1	3	7	0	8	7	
	2	6	5	0	8	5	
	3	8	0	2	8	4	
5	1	3	0	10	7	4	
	2	7	0	6	7	4	
	3	8	0	6	7	3	
6	1	3	4	0	10	5	
	2	8	0	5	9	4	
	3	10	0	2	7	3	
7	1	3	5	0	8	6	
	2	5	0	9	7	6	
	3	9	0	9	4	2	
8	1	1	6	0	5	5	
	2	6	0	4	2	5	
	3	10	0	4	1	5	
9	1	4	6	0	5	3	
	2	6	3	0	5	3	
	3	7	2	0	3	3	
10	1	5	0	9	6	7	
	2	8	0	4	3	4	
	3	9	2	0	3	2	
11	1	4	0	9	3	7	
	2	5	0	9	3	6	
	3	7	0	9	3	4	
12	1	3	2	0	7	7	
	2	5	0	8	6	7	
	3	6	0	6	5	7	
13	1	6	0	9	1	5	
	2	7	0	6	1	3	
	3	8	0	5	1	2	
14	1	2	0	7	6	7	
	2	3	7	0	6	7	
	3	5	5	0	3	7	
15	1	3	0	2	2	6	
	2	3	8	0	2	6	
	3	4	8	0	1	5	
16	1	5	0	6	8	5	
	2	8	9	0	7	4	
	3	9	9	0	7	3	
17	1	4	0	8	4	6	
	2	6	0	8	3	4	
	3	7	5	0	3	1	
18	1	3	0	4	8	8	
	2	7	0	3	4	7	
	3	8	0	1	2	5	
19	1	5	0	5	7	9	
	2	8	6	0	6	8	
	3	8	0	4	6	8	
20	1	3	6	0	7	3	
	2	4	0	6	5	2	
	3	9	3	0	5	1	
21	1	1	0	7	8	9	
	2	4	6	0	8	9	
	3	9	6	0	6	9	
22	1	1	9	0	4	8	
	2	7	0	7	3	7	
	3	8	9	0	1	5	
23	1	2	9	0	2	8	
	2	5	5	0	1	8	
	3	9	2	0	1	8	
24	1	1	0	4	8	9	
	2	7	6	0	5	6	
	3	10	0	2	4	5	
25	1	1	4	0	5	8	
	2	4	0	5	5	7	
	3	10	2	0	2	5	
26	1	3	0	7	5	8	
	2	5	7	0	4	3	
	3	8	0	2	3	1	
27	1	4	0	5	10	6	
	2	5	0	4	8	6	
	3	6	2	0	6	6	
28	1	2	0	9	8	10	
	2	7	0	8	6	5	
	3	10	2	0	3	4	
29	1	9	0	10	7	5	
	2	10	9	0	5	4	
	3	10	0	8	5	4	
30	1	5	0	10	6	8	
	2	5	2	0	5	7	
	3	7	2	0	4	6	
31	1	1	0	9	8	5	
	2	4	0	8	5	3	
	3	10	6	0	5	3	
32	1	5	7	0	9	8	
	2	6	6	0	8	8	
	3	9	5	0	6	7	
33	1	2	0	8	9	9	
	2	9	0	8	6	7	
	3	10	2	0	4	4	
34	1	8	4	0	7	8	
	2	8	0	4	7	8	
	3	10	4	0	1	8	
35	1	1	0	9	5	7	
	2	1	2	0	5	5	
	3	7	2	0	4	4	
36	1	1	0	7	8	8	
	2	1	5	0	6	6	
	3	10	0	1	5	6	
37	1	2	0	6	6	9	
	2	6	0	4	4	8	
	3	7	7	0	4	7	
38	1	5	0	5	4	1	
	2	6	8	0	4	1	
	3	8	0	4	3	1	
39	1	6	0	6	3	8	
	2	7	0	6	1	6	
	3	9	8	0	1	5	
40	1	1	0	6	5	7	
	2	4	0	6	4	7	
	3	6	0	6	3	5	
41	1	3	0	5	9	5	
	2	6	5	0	7	4	
	3	10	5	0	4	4	
42	1	3	4	0	7	4	
	2	8	0	9	7	3	
	3	10	4	0	7	2	
43	1	4	2	0	2	10	
	2	5	2	0	1	10	
	3	8	2	0	1	9	
44	1	1	0	7	6	7	
	2	2	7	0	4	6	
	3	3	0	3	1	6	
45	1	8	0	6	3	5	
	2	9	4	0	3	5	
	3	10	3	0	3	3	
46	1	1	0	5	8	4	
	2	7	9	0	8	2	
	3	10	7	0	8	2	
47	1	7	7	0	8	6	
	2	8	0	5	6	6	
	3	10	7	0	5	6	
48	1	1	1	0	9	7	
	2	3	1	0	6	6	
	3	4	1	0	6	4	
49	1	5	0	1	4	3	
	2	6	0	1	4	2	
	3	9	4	0	2	2	
50	1	4	0	5	6	7	
	2	5	0	5	5	6	
	3	8	0	2	2	5	
51	1	4	0	7	10	5	
	2	6	6	0	7	5	
	3	9	6	0	4	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	35	36	251	273

************************************************************************
