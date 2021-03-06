jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 3 4 5 6 
2	3	4		11 9 8 7 
3	3	5		18 14 13 12 10 
4	3	5		18 17 13 12 10 
5	3	7		20 19 18 17 16 13 12 
6	3	4		15 14 13 11 
7	3	5		20 18 16 15 14 
8	3	5		20 19 18 17 13 
9	3	4		23 19 18 15 
10	3	3		20 19 16 
11	3	3		20 17 16 
12	3	2		23 15 
13	3	6		29 28 25 24 22 21 
14	3	3		29 19 17 
15	3	5		29 28 25 22 21 
16	3	5		29 25 23 22 21 
17	3	5		28 27 26 25 24 
18	3	5		34 32 29 28 26 
19	3	3		28 27 24 
20	3	3		29 26 23 
21	3	3		39 27 26 
22	3	7		39 38 37 34 33 32 31 
23	3	7		39 38 37 35 34 33 32 
24	3	6		39 38 34 33 32 31 
25	3	5		40 39 37 34 30 
26	3	5		40 38 37 33 31 
27	3	3		40 34 31 
28	3	3		39 37 33 
29	3	2		40 31 
30	3	2		35 33 
31	3	3		42 41 35 
32	3	4		44 42 41 40 
33	3	3		42 41 36 
34	3	3		42 41 36 
35	3	2		50 36 
36	3	5		51 49 45 44 43 
37	3	5		50 49 45 44 43 
38	3	5		51 50 49 45 44 
39	3	4		51 49 45 43 
40	3	6		51 50 49 48 47 46 
41	3	3		49 45 43 
42	3	5		50 49 48 47 46 
43	3	2		47 46 
44	3	2		47 46 
45	3	1		48 
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
2	1	2	7	0	6	9	
	2	3	0	5	4	8	
	3	7	0	5	2	8	
3	1	4	0	8	10	6	
	2	9	1	0	8	4	
	3	10	0	4	6	2	
4	1	1	0	10	7	4	
	2	3	3	0	5	2	
	3	3	0	1	3	1	
5	1	8	8	0	7	7	
	2	10	0	8	5	7	
	3	10	5	0	3	7	
6	1	5	0	8	7	6	
	2	6	0	8	5	5	
	3	9	0	8	5	3	
7	1	4	8	0	7	4	
	2	6	0	5	7	4	
	3	8	0	5	7	2	
8	1	3	0	5	7	5	
	2	4	0	3	6	4	
	3	6	0	2	4	4	
9	1	6	0	7	7	5	
	2	7	8	0	7	5	
	3	8	0	2	7	5	
10	1	6	0	7	7	8	
	2	8	0	6	6	8	
	3	10	0	6	6	7	
11	1	1	2	0	5	1	
	2	8	2	0	3	1	
	3	10	2	0	1	1	
12	1	3	4	0	8	8	
	2	6	3	0	5	7	
	3	8	3	0	3	7	
13	1	2	3	0	4	4	
	2	3	2	0	2	2	
	3	5	0	5	2	2	
14	1	2	2	0	4	8	
	2	4	1	0	3	7	
	3	4	0	4	1	7	
15	1	1	7	0	8	7	
	2	4	0	7	7	7	
	3	7	4	0	7	7	
16	1	5	8	0	7	5	
	2	5	0	6	5	3	
	3	10	7	0	4	3	
17	1	1	0	6	10	3	
	2	6	0	6	4	2	
	3	7	1	0	2	2	
18	1	1	10	0	7	8	
	2	3	5	0	6	3	
	3	8	4	0	6	3	
19	1	4	0	9	7	9	
	2	9	0	8	5	5	
	3	9	10	0	2	4	
20	1	2	7	0	8	8	
	2	2	0	5	5	6	
	3	6	0	2	1	4	
21	1	2	9	0	4	3	
	2	7	0	5	4	1	
	3	9	7	0	3	1	
22	1	1	8	0	7	4	
	2	6	0	5	6	3	
	3	10	0	1	3	2	
23	1	1	0	9	6	3	
	2	2	0	9	5	3	
	3	4	0	9	4	3	
24	1	1	0	9	9	7	
	2	2	3	0	8	4	
	3	8	3	0	8	2	
25	1	2	0	6	5	6	
	2	8	0	4	5	5	
	3	10	6	0	5	3	
26	1	1	0	8	2	6	
	2	3	6	0	2	4	
	3	4	0	5	2	3	
27	1	2	0	3	9	8	
	2	7	8	0	6	6	
	3	8	8	0	6	5	
28	1	1	0	3	8	7	
	2	5	8	0	7	6	
	3	8	6	0	5	4	
29	1	5	0	8	2	8	
	2	8	6	0	1	6	
	3	10	6	0	1	3	
30	1	1	10	0	8	5	
	2	2	0	7	6	4	
	3	9	0	4	5	4	
31	1	7	0	1	8	8	
	2	7	7	0	8	8	
	3	8	7	0	7	8	
32	1	4	0	4	3	5	
	2	7	0	4	2	3	
	3	8	4	0	1	2	
33	1	1	0	8	6	4	
	2	2	0	5	5	4	
	3	2	4	0	5	2	
34	1	4	0	7	8	8	
	2	5	0	4	6	7	
	3	9	1	0	5	7	
35	1	4	3	0	9	10	
	2	5	2	0	8	8	
	3	6	1	0	5	8	
36	1	1	0	7	7	7	
	2	6	5	0	5	5	
	3	7	5	0	3	5	
37	1	2	0	9	5	10	
	2	4	2	0	4	9	
	3	8	2	0	2	8	
38	1	2	0	7	8	9	
	2	5	0	7	6	6	
	3	10	0	6	5	5	
39	1	2	5	0	8	5	
	2	3	3	0	7	3	
	3	7	0	6	5	3	
40	1	5	0	4	7	6	
	2	7	6	0	4	4	
	3	8	2	0	1	3	
41	1	3	0	2	10	3	
	2	5	0	2	8	3	
	3	6	4	0	8	3	
42	1	5	4	0	4	10	
	2	7	3	0	4	4	
	3	7	0	6	4	2	
43	1	1	0	8	6	3	
	2	2	0	7	6	1	
	3	8	1	0	6	1	
44	1	4	5	0	8	4	
	2	5	4	0	5	3	
	3	6	0	4	3	3	
45	1	3	0	4	9	3	
	2	5	1	0	5	3	
	3	9	1	0	4	2	
46	1	3	0	4	5	1	
	2	5	2	0	3	1	
	3	10	2	0	1	1	
47	1	1	0	7	2	8	
	2	4	0	5	2	4	
	3	10	0	5	2	3	
48	1	1	0	7	8	4	
	2	1	2	0	7	4	
	3	3	2	0	6	3	
49	1	1	0	8	4	2	
	2	5	5	0	3	1	
	3	6	0	2	1	1	
50	1	1	10	0	7	3	
	2	2	9	0	3	3	
	3	3	0	2	2	3	
51	1	1	7	0	8	10	
	2	4	5	0	7	10	
	3	10	0	7	7	10	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	17	18	265	244

************************************************************************
