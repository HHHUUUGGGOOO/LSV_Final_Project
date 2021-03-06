jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 5 6 8 9 
2	3	3		11 10 7 
3	3	3		19 12 10 
4	3	3		19 12 10 
5	3	2		17 7 
6	3	4		18 14 13 12 
7	3	6		22 19 18 16 14 13 
8	3	1		10 
9	3	7		22 21 20 18 17 16 14 
10	3	5		18 17 16 14 13 
11	3	4		18 17 14 13 
12	3	6		22 21 20 17 16 15 
13	3	3		24 21 20 
14	3	1		15 
15	3	5		32 31 27 25 23 
16	3	7		32 31 30 29 27 25 24 
17	3	4		32 31 27 23 
18	3	4		32 31 27 23 
19	3	2		27 21 
20	3	6		32 31 29 27 26 25 
21	3	5		31 30 29 26 25 
22	3	4		32 31 30 24 
23	3	3		30 29 24 
24	3	2		34 26 
25	3	2		34 28 
26	3	2		39 28 
27	3	5		51 43 40 38 33 
28	3	4		51 43 40 33 
29	3	6		51 42 40 39 38 36 
30	3	3		51 38 33 
31	3	4		42 39 36 35 
32	3	2		43 33 
33	3	2		42 35 
34	3	2		39 35 
35	3	4		50 46 45 37 
36	3	5		50 48 46 45 41 
37	3	4		49 48 47 41 
38	3	3		47 45 41 
39	3	3		48 46 44 
40	3	3		47 46 45 
41	3	1		44 
42	3	1		49 
43	3	1		45 
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
2	1	6	0	6	8	8	
	2	6	3	0	6	5	
	3	7	2	0	5	4	
3	1	5	0	8	4	6	
	2	5	4	0	4	5	
	3	7	2	0	4	5	
4	1	8	9	0	9	6	
	2	8	0	5	8	6	
	3	10	9	0	8	6	
5	1	2	0	7	8	6	
	2	5	3	0	6	5	
	3	10	0	4	5	5	
6	1	5	0	5	7	7	
	2	9	7	0	4	5	
	3	10	6	0	4	4	
7	1	1	0	5	6	7	
	2	2	0	4	4	6	
	3	10	0	2	1	5	
8	1	1	6	0	3	5	
	2	2	0	6	2	5	
	3	7	0	5	2	5	
9	1	6	0	7	8	4	
	2	8	6	0	7	2	
	3	10	4	0	7	2	
10	1	1	0	6	4	9	
	2	6	0	5	4	6	
	3	7	5	0	3	6	
11	1	1	8	0	7	2	
	2	6	0	4	7	1	
	3	7	4	0	7	1	
12	1	7	8	0	6	2	
	2	9	0	5	5	2	
	3	10	0	5	4	2	
13	1	8	4	0	9	2	
	2	9	4	0	7	2	
	3	10	0	5	7	1	
14	1	2	0	5	2	7	
	2	9	0	4	2	5	
	3	9	1	0	2	3	
15	1	2	7	0	8	8	
	2	3	6	0	7	7	
	3	7	5	0	6	7	
16	1	1	0	8	4	8	
	2	7	0	8	4	7	
	3	7	4	0	4	7	
17	1	2	0	7	10	6	
	2	5	0	4	9	5	
	3	9	0	2	8	2	
18	1	3	0	3	3	7	
	2	4	0	1	3	6	
	3	9	0	1	2	3	
19	1	2	0	5	4	6	
	2	8	0	3	3	3	
	3	9	0	3	2	3	
20	1	4	0	6	5	7	
	2	4	8	0	4	5	
	3	6	0	5	2	2	
21	1	2	0	8	8	9	
	2	3	5	0	7	9	
	3	5	1	0	7	9	
22	1	2	0	9	9	9	
	2	3	0	7	7	6	
	3	8	5	0	7	4	
23	1	5	0	10	9	10	
	2	5	1	0	8	9	
	3	8	0	8	8	8	
24	1	7	7	0	8	8	
	2	8	5	0	7	7	
	3	9	0	5	5	6	
25	1	5	8	0	9	3	
	2	7	0	6	7	3	
	3	9	0	6	6	3	
26	1	4	0	6	7	6	
	2	8	0	6	4	4	
	3	10	7	0	2	2	
27	1	2	6	0	9	7	
	2	3	0	5	8	4	
	3	4	0	4	8	2	
28	1	1	8	0	6	6	
	2	7	0	6	3	6	
	3	8	0	4	3	5	
29	1	2	8	0	9	8	
	2	5	7	0	6	7	
	3	6	3	0	6	6	
30	1	2	0	3	7	10	
	2	7	9	0	6	8	
	3	10	9	0	3	6	
31	1	2	7	0	5	6	
	2	3	0	5	3	4	
	3	8	4	0	3	3	
32	1	3	7	0	4	4	
	2	5	0	7	4	2	
	3	9	0	6	4	2	
33	1	5	0	4	6	7	
	2	5	5	0	4	7	
	3	6	0	1	3	7	
34	1	4	0	3	7	6	
	2	5	0	1	5	6	
	3	6	1	0	5	5	
35	1	1	6	0	6	8	
	2	2	0	8	5	6	
	3	3	6	0	5	4	
36	1	6	0	5	6	6	
	2	8	8	0	4	5	
	3	8	0	5	2	2	
37	1	2	0	7	5	7	
	2	3	6	0	5	5	
	3	10	0	2	5	4	
38	1	3	5	0	6	4	
	2	9	0	4	4	4	
	3	10	0	4	4	2	
39	1	1	8	0	8	1	
	2	7	0	3	7	1	
	3	9	0	2	6	1	
40	1	2	7	0	8	6	
	2	3	4	0	7	3	
	3	10	3	0	7	1	
41	1	4	9	0	8	9	
	2	6	0	5	5	6	
	3	9	6	0	5	5	
42	1	3	0	6	5	7	
	2	5	6	0	2	7	
	3	7	0	3	1	5	
43	1	1	0	7	6	7	
	2	2	0	5	5	3	
	3	3	2	0	1	1	
44	1	1	7	0	8	7	
	2	9	0	5	8	7	
	3	10	6	0	8	7	
45	1	3	0	3	5	10	
	2	7	0	2	5	6	
	3	10	1	0	2	3	
46	1	2	10	0	1	8	
	2	3	0	6	1	7	
	3	8	0	2	1	6	
47	1	4	0	7	10	9	
	2	9	3	0	8	8	
	3	9	0	1	8	8	
48	1	2	0	1	6	7	
	2	7	0	1	4	5	
	3	8	0	1	3	5	
49	1	3	10	0	8	4	
	2	6	0	8	6	3	
	3	7	0	7	5	3	
50	1	2	5	0	9	5	
	2	5	0	2	7	4	
	3	6	5	0	6	2	
51	1	3	5	0	10	10	
	2	4	4	0	9	8	
	3	5	2	0	9	8	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	24	27	256	237

************************************************************************
