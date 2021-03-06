jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 6 7 12 14 20 
2	3	8		29 26 23 18 17 15 11 10 
3	3	6		22 21 19 16 13 8 
4	3	6		26 25 24 17 16 13 
5	3	7		33 30 29 26 24 21 15 
6	3	4		33 25 23 9 
7	3	6		42 33 30 27 21 17 
8	3	5		42 33 30 25 17 
9	3	4		30 27 24 17 
10	3	7		43 37 35 33 27 25 24 
11	3	5		35 27 25 24 22 
12	3	5		43 32 30 25 16 
13	3	8		43 37 35 32 31 30 29 28 
14	3	8		42 37 35 33 32 28 27 25 
15	3	9		51 50 43 42 37 36 35 31 27 
16	3	9		51 49 42 41 37 36 35 33 31 
17	3	8		50 43 37 36 35 32 31 28 
18	3	10		51 50 48 43 42 41 40 37 35 32 
19	3	7		50 43 41 37 36 31 28 
20	3	7		50 48 41 37 35 32 28 
21	3	3		41 37 25 
22	3	6		50 49 43 42 37 31 
23	3	6		51 49 42 41 37 31 
24	3	5		51 42 41 36 32 
25	3	5		51 50 49 38 31 
26	3	4		50 48 41 32 
27	3	6		49 48 41 39 38 34 
28	3	7		51 49 47 46 40 39 38 
29	3	5		50 42 40 38 34 
30	3	5		51 47 41 38 36 
31	3	4		48 40 39 34 
32	3	4		49 39 38 34 
33	3	3		50 48 45 
34	3	2		47 46 
35	3	2		46 45 
36	3	2		48 44 
37	3	1		38 
38	3	1		44 
39	3	1		44 
40	3	1		45 
41	3	1		45 
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
2	1	1	9	10	5	4	
	2	8	4	10	5	3	
	3	9	1	10	4	3	
3	1	2	5	4	8	2	
	2	3	4	2	7	2	
	3	8	4	2	7	1	
4	1	2	6	8	7	5	
	2	7	4	6	6	4	
	3	10	2	5	6	2	
5	1	3	10	6	9	10	
	2	4	9	4	6	5	
	3	7	7	3	5	4	
6	1	2	6	10	10	3	
	2	7	5	9	10	2	
	3	8	4	8	10	2	
7	1	1	6	5	9	8	
	2	2	5	3	8	5	
	3	8	4	1	7	3	
8	1	2	6	2	3	5	
	2	5	4	1	2	4	
	3	6	1	1	2	4	
9	1	3	10	7	8	7	
	2	6	8	6	8	4	
	3	9	7	3	8	2	
10	1	1	4	7	10	7	
	2	8	4	7	9	6	
	3	9	3	7	8	2	
11	1	1	9	7	9	9	
	2	2	7	3	8	7	
	3	6	7	2	7	7	
12	1	1	5	8	8	6	
	2	4	5	6	6	5	
	3	5	5	4	5	3	
13	1	3	9	10	6	5	
	2	4	6	7	6	4	
	3	8	3	6	3	4	
14	1	5	8	1	5	5	
	2	6	5	1	4	4	
	3	8	5	1	4	3	
15	1	4	6	6	7	7	
	2	8	4	6	7	6	
	3	9	4	4	6	4	
16	1	3	10	9	10	9	
	2	5	8	7	8	6	
	3	6	7	7	8	5	
17	1	3	2	10	8	7	
	2	4	2	8	6	5	
	3	6	2	5	5	3	
18	1	2	9	7	10	8	
	2	6	8	4	8	6	
	3	7	8	3	6	5	
19	1	8	6	7	5	4	
	2	9	5	7	5	3	
	3	10	4	5	3	2	
20	1	1	7	2	5	6	
	2	2	5	1	3	3	
	3	3	3	1	2	1	
21	1	5	5	10	7	4	
	2	6	4	8	7	4	
	3	7	4	7	6	3	
22	1	7	7	6	5	3	
	2	8	4	5	5	3	
	3	9	2	5	5	3	
23	1	5	8	8	5	3	
	2	6	7	4	3	2	
	3	10	6	4	2	2	
24	1	6	7	3	7	6	
	2	7	4	3	5	5	
	3	8	4	3	4	2	
25	1	5	4	9	6	5	
	2	7	3	8	6	5	
	3	8	3	7	2	4	
26	1	3	8	6	6	9	
	2	4	8	6	5	7	
	3	5	8	6	5	4	
27	1	2	4	9	5	2	
	2	9	4	7	4	2	
	3	10	4	7	4	1	
28	1	2	9	10	4	10	
	2	3	9	4	4	10	
	3	4	7	2	3	10	
29	1	1	8	7	6	5	
	2	4	8	4	3	4	
	3	10	8	4	2	3	
30	1	1	10	2	8	9	
	2	3	7	2	8	7	
	3	6	6	2	8	5	
31	1	4	3	3	8	7	
	2	9	2	3	8	4	
	3	10	1	1	8	4	
32	1	2	9	8	7	10	
	2	3	6	6	6	8	
	3	10	5	5	5	6	
33	1	1	4	6	10	8	
	2	8	4	5	9	8	
	3	9	4	4	9	6	
34	1	3	9	9	6	4	
	2	4	9	3	3	2	
	3	5	9	1	2	1	
35	1	5	7	5	8	7	
	2	6	7	5	5	7	
	3	10	6	4	5	7	
36	1	1	9	7	6	5	
	2	6	6	5	4	4	
	3	9	5	3	1	3	
37	1	4	10	5	10	5	
	2	5	8	4	7	4	
	3	9	7	4	3	4	
38	1	1	8	9	4	6	
	2	4	7	5	3	5	
	3	6	6	4	2	4	
39	1	5	3	7	6	7	
	2	6	2	7	6	3	
	3	7	1	6	6	3	
40	1	2	5	7	4	6	
	2	4	3	6	3	5	
	3	7	2	5	3	2	
41	1	2	9	8	8	6	
	2	3	7	7	7	6	
	3	8	4	7	7	6	
42	1	1	6	9	4	5	
	2	3	4	6	4	5	
	3	10	4	5	4	4	
43	1	4	5	5	7	7	
	2	9	5	3	5	4	
	3	10	4	2	3	3	
44	1	2	5	7	5	3	
	2	3	3	7	4	2	
	3	10	1	5	4	1	
45	1	1	6	8	7	4	
	2	6	6	7	7	4	
	3	7	3	7	7	4	
46	1	3	6	2	8	10	
	2	4	5	2	8	7	
	3	5	3	2	8	3	
47	1	4	9	9	7	9	
	2	5	9	7	7	8	
	3	6	8	6	7	8	
48	1	2	6	8	8	3	
	2	4	6	7	4	3	
	3	6	5	5	3	3	
49	1	5	5	6	6	5	
	2	6	4	5	6	5	
	3	9	4	4	6	5	
50	1	3	2	7	6	4	
	2	4	2	7	5	2	
	3	5	2	6	4	2	
51	1	1	5	10	9	6	
	2	3	5	8	6	5	
	3	10	5	8	5	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	28	25	321	270

************************************************************************
