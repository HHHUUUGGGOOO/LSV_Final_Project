jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 3 6 12 
2	3	3		7 5 4 
3	3	5		15 11 10 9 7 
4	3	3		21 9 8 
5	3	6		22 19 16 15 14 13 
6	3	6		21 19 17 16 14 11 
7	3	6		22 21 17 16 14 13 
8	3	6		28 23 17 16 13 11 
9	3	4		19 16 14 13 
10	3	5		28 22 21 20 18 
11	3	4		26 22 20 18 
12	3	3		28 18 16 
13	3	3		26 20 18 
14	3	4		30 28 25 23 
15	3	2		21 20 
16	3	4		30 26 25 24 
17	3	4		30 26 25 24 
18	3	4		31 30 25 24 
19	3	4		31 30 25 24 
20	3	3		31 30 24 
21	3	3		36 26 24 
22	3	2		30 24 
23	3	2		31 24 
24	3	3		33 29 27 
25	3	3		33 29 27 
26	3	3		33 31 29 
27	3	6		40 38 37 35 34 32 
28	3	1		29 
29	3	4		40 37 35 34 
30	3	3		36 35 34 
31	3	5		50 43 39 37 35 
32	3	5		50 49 44 43 39 
33	3	6		50 48 44 43 41 40 
34	3	4		50 49 43 39 
35	3	6		51 49 48 44 42 41 
36	3	5		50 48 43 42 40 
37	3	4		49 48 44 41 
38	3	4		48 45 44 43 
39	3	3		51 48 41 
40	3	3		49 47 45 
41	3	2		47 45 
42	3	2		47 45 
43	3	2		47 46 
44	3	2		47 46 
45	3	1		46 
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
2	1	3	6	8	0	9	
	2	4	6	6	0	6	
	3	8	1	3	1	0	
3	1	1	1	9	0	3	
	2	5	1	9	0	2	
	3	9	1	9	0	1	
4	1	6	8	9	0	8	
	2	8	5	6	0	8	
	3	9	4	6	2	0	
5	1	2	9	7	0	4	
	2	5	8	5	0	4	
	3	5	8	4	1	0	
6	1	5	10	2	0	4	
	2	7	9	1	6	0	
	3	8	9	1	1	0	
7	1	4	9	5	0	7	
	2	5	7	3	5	0	
	3	7	3	2	5	0	
8	1	1	9	6	9	0	
	2	4	7	4	4	0	
	3	8	6	1	1	0	
9	1	1	5	8	9	0	
	2	9	3	5	8	0	
	3	10	1	4	0	5	
10	1	5	4	6	0	5	
	2	5	2	5	8	0	
	3	9	2	4	8	0	
11	1	2	6	7	9	0	
	2	3	4	3	6	0	
	3	8	1	2	0	1	
12	1	2	4	3	4	0	
	2	7	4	2	0	8	
	3	8	4	1	0	6	
13	1	2	9	9	8	0	
	2	6	8	6	7	0	
	3	10	8	3	6	0	
14	1	6	8	4	0	6	
	2	6	6	4	8	0	
	3	9	6	4	7	0	
15	1	5	10	10	6	0	
	2	6	9	8	0	4	
	3	9	7	5	0	3	
16	1	2	8	6	0	3	
	2	5	5	5	3	0	
	3	9	5	3	0	1	
17	1	1	10	5	10	0	
	2	2	8	3	0	8	
	3	2	5	3	3	0	
18	1	5	9	9	0	8	
	2	6	9	8	1	0	
	3	8	8	8	0	7	
19	1	4	7	6	0	3	
	2	5	6	6	0	2	
	3	7	6	6	4	0	
20	1	4	7	5	0	10	
	2	4	6	4	8	0	
	3	5	3	3	4	0	
21	1	1	2	9	7	0	
	2	5	2	9	3	0	
	3	8	2	8	1	0	
22	1	2	6	6	4	0	
	2	6	6	5	0	5	
	3	8	6	3	0	2	
23	1	1	5	10	2	0	
	2	2	3	9	2	0	
	3	6	2	9	2	0	
24	1	2	7	4	0	4	
	2	6	5	2	3	0	
	3	8	4	2	2	0	
25	1	1	9	10	0	5	
	2	2	9	9	0	2	
	3	7	9	8	0	1	
26	1	3	8	4	0	6	
	2	7	8	3	0	3	
	3	10	8	3	0	1	
27	1	7	9	6	6	0	
	2	7	8	6	0	5	
	3	9	7	6	0	1	
28	1	1	5	5	0	5	
	2	6	3	5	0	2	
	3	10	2	3	6	0	
29	1	8	3	5	0	8	
	2	9	3	4	0	8	
	3	9	3	4	6	0	
30	1	1	7	9	6	0	
	2	7	6	9	6	0	
	3	8	4	8	5	0	
31	1	2	7	9	0	4	
	2	7	5	9	0	3	
	3	10	3	8	0	3	
32	1	4	7	1	6	0	
	2	4	7	1	0	3	
	3	6	7	1	5	0	
33	1	2	7	10	0	9	
	2	4	5	6	2	0	
	3	8	4	6	2	0	
34	1	5	5	7	0	2	
	2	6	4	7	0	1	
	3	10	3	5	0	1	
35	1	2	4	5	0	4	
	2	9	2	3	8	0	
	3	9	2	2	0	4	
36	1	2	6	5	5	0	
	2	7	6	3	0	7	
	3	8	6	3	4	0	
37	1	1	9	5	0	3	
	2	5	6	4	0	2	
	3	5	5	3	7	0	
38	1	1	2	6	9	0	
	2	4	1	5	4	0	
	3	9	1	4	2	0	
39	1	1	7	10	0	6	
	2	5	7	4	4	0	
	3	8	7	1	4	0	
40	1	3	10	4	0	3	
	2	4	8	4	4	0	
	3	9	8	4	0	1	
41	1	2	9	9	7	0	
	2	6	9	6	0	4	
	3	10	8	4	1	0	
42	1	2	2	5	0	6	
	2	6	1	4	3	0	
	3	8	1	4	1	0	
43	1	1	1	9	0	10	
	2	8	1	9	0	7	
	3	9	1	9	6	0	
44	1	4	4	7	0	8	
	2	5	4	6	0	6	
	3	6	4	5	0	6	
45	1	2	6	6	0	5	
	2	4	5	6	0	4	
	3	10	5	6	0	3	
46	1	1	9	7	10	0	
	2	4	9	7	0	2	
	3	8	9	7	0	1	
47	1	3	3	9	0	7	
	2	4	3	8	0	3	
	3	5	2	7	4	0	
48	1	3	9	2	5	0	
	2	4	7	1	3	0	
	3	6	6	1	2	0	
49	1	3	5	1	0	9	
	2	4	4	1	0	7	
	3	5	3	1	0	6	
50	1	3	10	10	10	0	
	2	5	9	7	0	1	
	3	9	8	6	0	1	
51	1	1	3	5	3	0	
	2	6	3	4	0	6	
	3	7	3	3	0	6	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	30	28	71	74

************************************************************************
