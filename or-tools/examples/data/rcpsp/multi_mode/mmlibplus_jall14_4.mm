jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 6 7 10 
2	3	7		21 18 16 15 11 9 5 
3	3	8		24 19 18 17 15 14 13 8 
4	3	8		35 31 26 21 19 17 12 11 
5	3	7		26 24 22 19 17 13 12 
6	3	7		50 26 25 24 19 15 13 
7	3	5		50 29 20 13 11 
8	3	11		50 42 35 33 32 30 29 28 25 23 22 
9	3	5		34 29 28 20 13 
10	3	8		50 32 30 29 27 25 24 23 
11	3	7		33 32 28 25 24 23 22 
12	3	8		51 42 36 33 28 27 25 23 
13	3	8		51 36 35 32 31 30 27 23 
14	3	7		42 32 30 29 28 27 23 
15	3	6		51 34 32 30 29 22 
16	3	9		50 49 39 36 34 33 32 31 27 
17	3	7		50 49 39 32 30 29 27 
18	3	5		36 32 31 23 22 
19	3	7		51 49 47 39 34 33 27 
20	3	6		49 39 36 32 30 27 
21	3	6		50 49 39 36 32 27 
22	3	5		49 47 39 37 27 
23	3	7		49 47 45 41 39 38 37 
24	3	6		48 47 45 42 41 37 
25	3	5		49 45 39 38 34 
26	3	4		48 46 45 32 
27	3	5		48 45 41 40 38 
28	3	4		47 46 45 37 
29	3	3		47 37 36 
30	3	5		47 45 44 41 40 
31	3	5		48 47 45 44 41 
32	3	3		47 41 37 
33	3	3		46 41 37 
34	3	3		44 41 40 
35	3	3		46 44 41 
36	3	3		45 44 43 
37	3	2		44 40 
38	3	2		46 44 
39	3	1		40 
40	3	1		43 
41	3	1		43 
42	3	1		46 
43	3	1		52 
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
2	1	4	9	8	5	2	
	2	9	6	5	4	2	
	3	10	2	4	4	2	
3	1	1	6	4	2	7	
	2	3	4	3	2	7	
	3	10	2	3	2	7	
4	1	4	8	9	2	9	
	2	5	7	7	2	8	
	3	6	6	6	2	8	
5	1	4	8	4	1	6	
	2	6	7	3	1	6	
	3	10	7	3	1	5	
6	1	2	7	6	7	8	
	2	8	5	6	7	5	
	3	9	1	4	6	4	
7	1	2	7	7	8	8	
	2	6	7	6	6	5	
	3	9	5	6	3	4	
8	1	4	9	8	9	4	
	2	8	7	6	8	4	
	3	9	5	6	6	1	
9	1	6	4	5	3	7	
	2	9	4	4	2	7	
	3	10	2	4	2	7	
10	1	6	3	5	7	8	
	2	9	3	4	4	6	
	3	10	3	4	3	5	
11	1	1	9	6	7	3	
	2	6	6	4	6	3	
	3	8	5	1	5	3	
12	1	2	9	1	7	7	
	2	7	7	1	6	5	
	3	9	6	1	6	5	
13	1	6	5	3	9	8	
	2	9	2	3	5	8	
	3	10	1	3	3	8	
14	1	2	2	7	1	7	
	2	3	2	4	1	6	
	3	4	1	2	1	6	
15	1	2	4	4	6	9	
	2	6	3	2	3	8	
	3	8	3	1	2	7	
16	1	4	8	7	8	5	
	2	6	7	7	6	3	
	3	8	7	7	6	2	
17	1	2	7	2	8	6	
	2	6	6	2	5	6	
	3	8	5	2	3	6	
18	1	7	6	9	5	6	
	2	9	4	9	3	5	
	3	10	3	8	2	5	
19	1	5	5	6	2	5	
	2	6	4	3	2	2	
	3	8	2	1	2	2	
20	1	7	5	6	8	7	
	2	9	3	2	6	7	
	3	10	2	1	4	7	
21	1	8	9	7	3	9	
	2	9	6	5	2	6	
	3	10	2	4	2	4	
22	1	1	1	8	6	7	
	2	5	1	8	6	6	
	3	6	1	6	6	7	
23	1	1	6	9	10	7	
	2	6	6	8	6	3	
	3	9	6	7	3	3	
24	1	2	7	9	7	6	
	2	5	6	6	7	5	
	3	6	6	5	5	4	
25	1	3	9	8	5	6	
	2	6	3	5	4	5	
	3	8	3	4	1	4	
26	1	6	2	8	10	4	
	2	7	2	7	10	4	
	3	9	2	5	10	4	
27	1	5	9	6	4	5	
	2	6	5	6	3	2	
	3	10	5	6	3	1	
28	1	1	8	6	9	2	
	2	6	8	5	7	2	
	3	7	6	5	7	1	
29	1	2	5	9	9	10	
	2	5	3	7	9	8	
	3	10	2	7	8	6	
30	1	1	9	9	2	6	
	2	6	9	4	1	5	
	3	7	8	2	1	5	
31	1	3	10	8	6	2	
	2	8	7	4	5	1	
	3	10	3	2	5	1	
32	1	3	8	6	7	3	
	2	6	6	6	7	2	
	3	10	6	5	7	2	
33	1	3	6	9	5	8	
	2	4	4	9	4	8	
	3	6	3	9	4	6	
34	1	7	4	3	6	9	
	2	9	3	3	6	7	
	3	10	3	3	6	6	
35	1	1	8	4	7	5	
	2	2	6	3	4	5	
	3	7	1	3	3	5	
36	1	1	5	9	5	7	
	2	2	5	7	3	7	
	3	6	3	5	2	4	
37	1	1	8	8	9	4	
	2	2	5	8	8	4	
	3	7	3	8	7	4	
38	1	1	9	4	3	9	
	2	4	9	3	2	8	
	3	5	7	3	1	8	
39	1	1	7	4	5	8	
	2	2	6	4	5	5	
	3	7	4	4	5	3	
40	1	4	5	6	3	10	
	2	6	3	5	2	9	
	3	7	1	5	2	7	
41	1	1	6	5	3	10	
	2	4	4	4	3	10	
	3	10	3	4	3	10	
42	1	1	6	7	9	2	
	2	2	4	6	7	2	
	3	9	2	5	7	2	
43	1	1	1	7	8	7	
	2	4	1	7	6	7	
	3	9	1	4	2	6	
44	1	6	5	6	8	9	
	2	7	3	6	5	9	
	3	8	2	6	4	9	
45	1	4	5	3	8	9	
	2	6	3	2	7	5	
	3	10	3	1	6	4	
46	1	3	2	9	8	3	
	2	4	2	8	7	3	
	3	9	2	4	7	3	
47	1	1	2	10	4	9	
	2	7	2	10	2	4	
	3	10	1	10	1	2	
48	1	1	3	2	8	5	
	2	3	2	1	6	4	
	3	7	2	1	6	3	
49	1	1	8	8	4	8	
	2	2	8	7	2	5	
	3	10	7	7	2	5	
50	1	5	9	8	4	4	
	2	8	7	8	2	4	
	3	9	3	7	2	4	
51	1	2	5	7	6	9	
	2	3	3	4	6	7	
	3	7	3	4	6	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	46	41	246	279

************************************************************************
