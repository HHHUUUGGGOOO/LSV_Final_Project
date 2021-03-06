jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 6 11 12 
2	3	5		14 13 8 7 5 
3	3	4		18 15 14 9 
4	3	3		18 17 7 
5	3	5		19 18 17 16 15 
6	3	3		19 17 10 
7	3	5		27 23 19 16 15 
8	3	4		27 18 16 15 
9	3	4		27 23 19 13 
10	3	4		27 23 16 15 
11	3	4		27 19 18 16 
12	3	2		17 13 
13	3	2		21 16 
14	3	2		21 17 
15	3	4		24 22 21 20 
16	3	3		24 22 20 
17	3	3		27 24 20 
18	3	3		24 23 20 
19	3	2		25 24 
20	3	2		26 25 
21	3	2		29 25 
22	3	3		33 30 26 
23	3	3		31 30 29 
24	3	4		36 34 31 29 
25	3	2		30 28 
26	3	5		40 36 34 32 31 
27	3	6		40 38 36 35 34 33 
28	3	3		40 33 31 
29	3	5		40 37 35 33 32 
30	3	5		41 40 39 36 34 
31	3	4		44 38 37 35 
32	3	9		51 50 49 48 47 46 44 43 41 
33	3	7		51 50 49 48 44 41 39 
34	3	6		51 46 44 43 42 37 
35	3	5		49 48 43 41 39 
36	3	5		49 48 47 46 42 
37	3	5		50 49 48 47 45 
38	3	3		46 43 42 
39	3	3		47 46 45 
40	3	2		50 42 
41	3	1		42 
42	3	1		45 
43	3	1		45 
44	3	1		45 
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
2	1	1	0	8	0	5	
	2	5	0	7	0	5	
	3	6	0	6	0	1	
3	1	3	2	0	0	9	
	2	3	2	0	2	0	
	3	6	0	2	0	5	
4	1	3	10	0	0	2	
	2	4	7	0	7	0	
	3	8	5	0	0	1	
5	1	1	6	0	0	5	
	2	4	0	3	0	4	
	3	5	5	0	0	4	
6	1	1	0	6	0	5	
	2	6	0	6	3	0	
	3	8	6	0	0	2	
7	1	7	10	0	0	4	
	2	8	6	0	0	2	
	3	9	5	0	0	2	
8	1	4	0	8	0	7	
	2	5	0	8	3	0	
	3	8	0	8	0	1	
9	1	5	0	1	6	0	
	2	9	6	0	6	0	
	3	10	6	0	5	0	
10	1	1	0	8	0	8	
	2	4	0	8	0	7	
	3	7	8	0	0	7	
11	1	2	0	2	0	10	
	2	7	0	1	1	0	
	3	9	4	0	0	9	
12	1	1	0	10	4	0	
	2	1	7	0	0	4	
	3	4	5	0	4	0	
13	1	4	10	0	5	0	
	2	8	7	0	5	0	
	3	10	7	0	4	0	
14	1	1	8	0	8	0	
	2	5	5	0	6	0	
	3	8	5	0	0	5	
15	1	1	8	0	5	0	
	2	5	7	0	3	0	
	3	7	5	0	0	1	
16	1	2	7	0	7	0	
	2	8	7	0	0	1	
	3	10	0	1	0	1	
17	1	1	9	0	0	10	
	2	4	8	0	0	7	
	3	6	6	0	2	0	
18	1	4	0	8	4	0	
	2	7	4	0	2	0	
	3	8	4	0	1	0	
19	1	5	8	0	0	8	
	2	7	0	7	0	7	
	3	8	0	6	0	5	
20	1	1	4	0	0	8	
	2	6	0	1	3	0	
	3	8	3	0	0	8	
21	1	4	0	4	6	0	
	2	10	4	0	2	0	
	3	10	0	4	2	0	
22	1	3	10	0	0	4	
	2	9	0	9	4	0	
	3	9	0	8	0	1	
23	1	1	8	0	8	0	
	2	3	8	0	0	7	
	3	9	8	0	5	0	
24	1	1	0	5	0	9	
	2	7	4	0	0	5	
	3	10	0	2	0	5	
25	1	2	0	5	0	8	
	2	6	0	5	3	0	
	3	6	1	0	0	7	
26	1	7	9	0	7	0	
	2	10	8	0	0	3	
	3	10	0	2	0	2	
27	1	1	8	0	6	0	
	2	6	3	0	5	0	
	3	10	2	0	0	2	
28	1	1	5	0	6	0	
	2	2	3	0	6	0	
	3	9	0	2	0	3	
29	1	5	0	7	8	0	
	2	9	7	0	0	7	
	3	9	5	0	2	0	
30	1	1	7	0	6	0	
	2	3	0	3	0	8	
	3	6	6	0	2	0	
31	1	3	8	0	0	6	
	2	7	6	0	8	0	
	3	9	0	5	0	5	
32	1	5	0	8	0	7	
	2	6	8	0	9	0	
	3	7	0	6	0	3	
33	1	1	0	7	0	6	
	2	4	3	0	0	5	
	3	8	2	0	5	0	
34	1	2	0	7	0	3	
	2	3	4	0	7	0	
	3	4	0	7	0	2	
35	1	6	0	7	5	0	
	2	7	0	7	4	0	
	3	8	0	4	2	0	
36	1	1	9	0	0	4	
	2	2	9	0	0	3	
	3	3	0	4	0	3	
37	1	1	0	4	0	7	
	2	4	0	3	6	0	
	3	8	0	2	3	0	
38	1	3	9	0	0	7	
	2	6	7	0	0	6	
	3	8	3	0	0	5	
39	1	1	0	3	0	5	
	2	7	4	0	9	0	
	3	9	0	2	8	0	
40	1	3	3	0	8	0	
	2	7	2	0	0	7	
	3	8	0	5	3	0	
41	1	4	5	0	0	8	
	2	4	0	6	0	6	
	3	5	0	4	0	3	
42	1	2	0	4	0	9	
	2	8	7	0	3	0	
	3	10	6	0	3	0	
43	1	1	0	10	5	0	
	2	3	5	0	4	0	
	3	9	5	0	3	0	
44	1	1	3	0	10	0	
	2	2	0	6	8	0	
	3	3	2	0	0	3	
45	1	2	0	6	0	4	
	2	5	4	0	9	0	
	3	6	0	3	7	0	
46	1	2	5	0	0	9	
	2	4	4	0	0	8	
	3	8	0	8	0	7	
47	1	4	0	5	0	5	
	2	5	0	2	0	4	
	3	10	4	0	5	0	
48	1	1	0	9	0	9	
	2	6	0	9	3	0	
	3	7	0	9	1	0	
49	1	2	5	0	1	0	
	2	7	0	6	1	0	
	3	8	1	0	0	9	
50	1	5	0	8	0	6	
	2	7	0	6	0	6	
	3	8	0	5	0	5	
51	1	1	4	0	0	6	
	2	3	3	0	0	5	
	3	4	0	4	2	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	17	16	64	100

************************************************************************
