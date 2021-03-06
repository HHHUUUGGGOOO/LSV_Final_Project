jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 9 10 
2	3	5		21 17 12 8 6 
3	3	6		21 18 15 14 13 12 
4	3	5		21 20 18 14 11 
5	3	3		21 12 7 
6	3	4		20 18 14 11 
7	3	3		20 14 13 
8	3	3		20 15 13 
9	3	2		14 12 
10	3	2		15 11 
11	3	1		13 
12	3	5		24 23 22 20 19 
13	3	1		16 
14	3	1		16 
15	3	1		16 
16	3	4		24 23 22 19 
17	3	4		24 23 22 20 
18	3	4		28 25 24 23 
19	3	4		36 28 27 25 
20	3	3		36 26 25 
21	3	1		22 
22	3	7		40 35 34 32 29 28 27 
23	3	4		36 34 29 26 
24	3	7		42 41 40 35 34 32 31 
25	3	5		35 34 33 32 29 
26	3	2		40 27 
27	3	3		33 31 30 
28	3	3		37 33 30 
29	3	6		44 42 41 39 38 37 
30	3	6		51 45 44 42 39 38 
31	3	5		51 44 39 38 37 
32	3	5		51 45 39 38 37 
33	3	4		44 41 39 38 
34	3	5		51 47 46 44 43 
35	3	3		45 44 38 
36	3	2		41 40 
37	3	4		50 47 46 43 
38	3	4		50 49 47 46 
39	3	3		47 46 43 
40	3	3		51 50 45 
41	3	3		51 50 49 
42	3	2		49 46 
43	3	2		49 48 
44	3	2		50 49 
45	3	1		46 
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
2	1	1	8	10	9	7	
	2	4	7	9	9	5	
	3	5	6	9	8	5	
3	1	4	4	8	6	4	
	2	5	3	7	4	4	
	3	7	2	6	4	3	
4	1	4	7	7	4	10	
	2	6	5	5	3	7	
	3	9	4	4	2	3	
5	1	1	8	8	5	7	
	2	8	4	8	3	6	
	3	10	3	8	1	5	
6	1	1	7	4	9	6	
	2	2	5	2	8	3	
	3	3	2	2	8	3	
7	1	1	9	5	3	8	
	2	2	9	5	2	5	
	3	6	9	5	2	4	
8	1	2	1	8	7	5	
	2	3	1	6	6	3	
	3	8	1	6	6	2	
9	1	4	9	10	5	3	
	2	7	4	9	4	3	
	3	8	2	9	3	3	
10	1	5	7	7	8	9	
	2	7	5	3	7	6	
	3	8	5	2	6	6	
11	1	1	10	9	8	8	
	2	2	6	7	5	3	
	3	9	5	7	3	3	
12	1	2	8	8	7	7	
	2	4	8	4	5	5	
	3	8	7	3	1	4	
13	1	5	8	10	5	7	
	2	7	7	8	4	6	
	3	8	2	8	2	3	
14	1	2	9	1	4	9	
	2	4	6	1	3	8	
	3	9	2	1	2	6	
15	1	3	7	3	8	6	
	2	8	6	1	7	4	
	3	9	5	1	7	2	
16	1	5	5	5	2	8	
	2	7	5	3	2	7	
	3	8	4	3	2	7	
17	1	2	5	7	3	5	
	2	4	5	4	3	5	
	3	5	4	3	1	5	
18	1	6	3	6	7	3	
	2	7	3	4	6	2	
	3	8	3	1	5	2	
19	1	1	10	10	2	9	
	2	2	8	9	1	7	
	3	5	6	9	1	2	
20	1	2	10	7	6	2	
	2	3	8	5	5	1	
	3	10	7	2	5	1	
21	1	3	7	6	10	10	
	2	5	6	6	10	9	
	3	6	5	5	10	8	
22	1	1	7	10	8	5	
	2	6	7	8	6	4	
	3	7	7	8	5	4	
23	1	7	10	8	6	5	
	2	8	4	7	4	4	
	3	9	2	7	4	4	
24	1	1	8	6	10	9	
	2	5	6	5	10	7	
	3	6	6	4	10	7	
25	1	7	4	6	7	9	
	2	8	3	4	6	8	
	3	9	2	3	4	8	
26	1	1	9	3	5	3	
	2	6	6	2	4	2	
	3	10	3	2	3	2	
27	1	2	7	6	3	9	
	2	5	5	6	2	9	
	3	8	4	4	2	8	
28	1	3	8	8	4	8	
	2	6	5	8	4	8	
	3	7	4	6	3	8	
29	1	5	7	8	6	8	
	2	6	5	8	6	7	
	3	7	5	8	5	2	
30	1	1	5	8	8	4	
	2	2	4	5	5	4	
	3	9	4	5	4	4	
31	1	3	8	4	10	6	
	2	6	7	3	8	6	
	3	10	6	2	8	6	
32	1	6	5	9	4	7	
	2	7	4	8	4	5	
	3	10	2	8	4	5	
33	1	1	5	3	9	10	
	2	2	5	3	8	9	
	3	10	4	2	8	9	
34	1	3	7	9	3	10	
	2	5	4	8	2	7	
	3	8	3	4	2	6	
35	1	1	7	6	9	5	
	2	7	6	5	3	5	
	3	9	5	4	3	5	
36	1	3	5	4	6	6	
	2	4	5	4	3	4	
	3	6	5	3	2	3	
37	1	3	9	4	7	5	
	2	7	7	2	7	4	
	3	8	5	1	4	4	
38	1	4	7	8	6	10	
	2	6	5	6	4	6	
	3	9	3	6	4	4	
39	1	2	7	4	7	10	
	2	3	7	2	7	6	
	3	6	7	2	7	3	
40	1	1	5	5	7	4	
	2	2	5	3	5	4	
	3	5	4	3	1	3	
41	1	2	6	9	4	7	
	2	7	5	7	2	6	
	3	8	2	7	2	4	
42	1	1	5	2	8	8	
	2	5	4	1	7	6	
	3	6	3	1	6	4	
43	1	1	5	8	7	6	
	2	2	4	7	6	4	
	3	8	4	7	6	3	
44	1	3	4	4	6	6	
	2	4	3	4	3	6	
	3	8	1	4	2	4	
45	1	3	3	4	9	6	
	2	4	3	4	8	3	
	3	10	3	3	8	3	
46	1	1	6	5	5	6	
	2	2	6	3	4	5	
	3	3	4	2	3	5	
47	1	4	9	5	5	4	
	2	5	7	5	4	3	
	3	6	7	4	4	3	
48	1	3	5	3	9	9	
	2	4	3	2	7	8	
	3	9	3	1	5	7	
49	1	2	9	8	7	8	
	2	3	9	4	5	6	
	3	7	8	3	3	3	
50	1	1	9	6	4	8	
	2	5	8	6	4	6	
	3	6	7	6	4	1	
51	1	1	9	8	7	8	
	2	6	9	6	6	6	
	3	10	9	6	4	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	29	33	261	278

************************************************************************
