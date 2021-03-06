jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 7 8 9 10 18 
2	3	8		26 21 20 19 16 15 13 11 
3	3	8		31 23 21 20 17 15 14 12 
4	3	8		31 26 24 23 21 17 14 12 
5	3	7		24 23 22 19 17 14 12 
6	3	5		31 24 23 17 12 
7	3	8		31 27 25 24 23 21 17 16 
8	3	4		26 23 14 12 
9	3	6		31 28 27 21 17 15 
10	3	5		30 23 21 16 15 
11	3	9		51 33 31 30 29 25 24 23 22 
12	3	6		30 29 28 27 25 16 
13	3	6		51 35 34 27 24 23 
14	3	7		51 48 36 35 34 32 27 
15	3	4		35 29 25 24 
16	3	7		51 48 40 38 34 33 32 
17	3	7		51 50 45 44 38 30 29 
18	3	5		50 49 33 32 29 
19	3	4		35 34 29 28 
20	3	6		47 38 37 36 34 33 
21	3	9		51 49 48 47 45 43 39 36 35 
22	3	8		49 48 47 44 43 39 37 35 
23	3	7		50 48 47 46 43 38 32 
24	3	6		50 49 48 47 43 32 
25	3	7		49 46 43 42 38 37 36 
26	3	7		50 48 45 44 39 38 35 
27	3	6		50 44 43 40 39 38 
28	3	6		48 44 43 42 41 37 
29	3	5		48 46 43 40 39 
30	3	5		49 48 47 42 35 
31	3	3		42 38 34 
32	3	4		44 42 41 37 
33	3	3		45 42 35 
34	3	4		50 49 43 41 
35	3	2		46 41 
36	3	2		44 41 
37	3	1		45 
38	3	1		41 
39	3	1		42 
40	3	1		47 
41	3	1		52 
42	3	1		52 
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
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	2	5	3	9	9	5	6	
	2	3	4	3	9	4	5	6	
	3	7	4	3	9	3	5	6	
3	1	1	5	10	3	6	8	5	
	2	3	3	7	1	4	7	5	
	3	5	3	7	1	4	3	5	
4	1	3	5	10	7	6	3	5	
	2	8	4	9	7	4	3	3	
	3	10	4	8	7	2	1	2	
5	1	1	8	8	8	6	8	8	
	2	2	7	7	4	5	8	7	
	3	10	5	5	4	4	6	6	
6	1	2	5	9	8	7	4	9	
	2	8	4	6	6	5	3	8	
	3	10	4	6	5	5	3	7	
7	1	5	10	4	7	4	10	3	
	2	7	8	4	4	3	4	3	
	3	8	8	4	3	3	3	3	
8	1	2	6	8	3	2	8	9	
	2	6	3	6	1	2	7	6	
	3	9	1	5	1	2	7	4	
9	1	6	7	10	9	9	9	7	
	2	9	4	8	6	7	9	5	
	3	10	2	8	6	5	9	2	
10	1	1	10	4	3	5	6	3	
	2	3	8	4	3	4	4	3	
	3	8	8	2	1	4	3	3	
11	1	2	10	9	7	1	4	3	
	2	3	7	6	5	1	3	3	
	3	7	5	5	4	1	3	3	
12	1	4	5	9	9	3	2	9	
	2	5	4	5	8	2	2	6	
	3	6	2	3	6	2	1	3	
13	1	1	5	9	8	10	7	9	
	2	5	4	8	6	9	4	7	
	3	9	2	8	5	8	4	6	
14	1	1	7	7	7	9	9	8	
	2	6	6	4	7	7	9	8	
	3	7	5	3	7	6	9	8	
15	1	2	6	9	9	9	5	5	
	2	7	3	7	9	9	5	4	
	3	8	1	2	9	9	5	4	
16	1	4	4	9	6	8	5	5	
	2	6	3	4	5	7	3	4	
	3	9	2	3	5	6	3	3	
17	1	1	9	9	9	5	5	7	
	2	6	6	6	9	5	5	7	
	3	8	4	6	7	5	5	6	
18	1	2	10	7	2	6	8	8	
	2	4	5	7	2	3	5	7	
	3	8	3	6	2	2	5	6	
19	1	6	5	5	7	7	5	9	
	2	7	5	2	3	5	5	5	
	3	8	4	2	2	3	5	3	
20	1	2	6	5	9	5	7	4	
	2	3	3	4	8	5	5	4	
	3	10	2	4	7	5	3	4	
21	1	2	7	4	6	6	7	7	
	2	6	5	2	5	4	6	7	
	3	7	2	2	3	2	6	5	
22	1	4	5	3	10	8	7	3	
	2	5	5	2	6	5	4	3	
	3	10	4	1	4	5	2	3	
23	1	1	5	7	6	9	8	8	
	2	3	3	7	4	9	4	7	
	3	8	3	7	4	9	2	7	
24	1	1	4	10	6	2	6	6	
	2	2	3	8	4	2	4	5	
	3	8	3	6	4	2	4	5	
25	1	4	1	1	8	10	3	10	
	2	5	1	1	7	9	3	6	
	3	10	1	1	7	8	3	2	
26	1	3	6	8	9	9	9	8	
	2	6	4	6	5	8	7	8	
	3	8	3	5	4	7	5	8	
27	1	1	5	6	6	7	5	7	
	2	6	4	6	6	6	5	6	
	3	8	3	6	6	3	5	6	
28	1	1	7	4	7	3	6	7	
	2	2	6	2	6	2	6	6	
	3	8	6	2	2	2	6	5	
29	1	3	4	3	6	3	5	4	
	2	6	3	2	5	3	4	4	
	3	8	2	1	4	3	4	4	
30	1	5	9	7	8	7	8	10	
	2	8	5	3	7	5	8	6	
	3	10	4	2	6	3	8	4	
31	1	1	6	7	8	9	7	4	
	2	6	6	5	7	8	6	3	
	3	10	6	4	6	7	4	2	
32	1	4	4	5	8	9	9	9	
	2	6	4	5	8	9	3	7	
	3	9	2	5	8	9	2	3	
33	1	8	5	8	2	7	5	5	
	2	9	5	6	1	5	4	4	
	3	10	3	5	1	4	4	3	
34	1	1	8	9	9	4	9	6	
	2	5	4	7	6	4	5	4	
	3	8	2	7	4	4	2	2	
35	1	6	9	8	7	5	10	5	
	2	8	6	8	7	4	9	4	
	3	9	5	7	7	4	9	4	
36	1	5	7	5	10	9	2	9	
	2	7	7	5	9	5	2	7	
	3	8	7	5	7	2	2	7	
37	1	3	5	6	3	9	6	9	
	2	6	2	3	2	9	6	4	
	3	7	2	3	2	8	4	2	
38	1	4	6	8	5	5	6	6	
	2	5	5	4	3	4	6	6	
	3	9	4	3	3	1	6	4	
39	1	1	6	10	6	8	7	9	
	2	6	2	10	6	7	7	7	
	3	9	1	10	6	5	6	7	
40	1	1	5	4	5	8	10	9	
	2	5	3	2	3	6	4	7	
	3	6	3	2	2	3	3	5	
41	1	1	8	4	3	9	7	4	
	2	3	8	3	2	6	4	2	
	3	5	8	1	2	1	4	2	
42	1	1	7	8	9	5	10	5	
	2	6	6	8	6	4	9	3	
	3	7	2	8	4	4	9	2	
43	1	3	7	9	9	7	6	6	
	2	4	4	6	7	3	5	6	
	3	10	2	5	4	2	5	1	
44	1	2	4	8	7	9	6	9	
	2	3	4	7	4	8	4	8	
	3	6	3	7	3	7	3	8	
45	1	1	3	8	7	8	9	9	
	2	9	3	8	7	6	6	7	
	3	10	3	8	6	6	6	6	
46	1	7	4	6	8	7	9	8	
	2	8	4	5	6	4	8	8	
	3	9	4	2	5	1	6	7	
47	1	3	2	9	7	6	9	5	
	2	5	2	7	6	6	6	4	
	3	8	1	6	6	5	5	4	
48	1	1	6	1	8	5	10	5	
	2	3	6	1	5	4	8	3	
	3	9	6	1	3	2	7	2	
49	1	5	3	6	1	9	3	7	
	2	7	2	6	1	3	2	6	
	3	10	2	4	1	3	2	1	
50	1	8	6	6	8	9	8	7	
	2	9	5	5	6	8	8	6	
	3	10	2	5	4	6	8	5	
51	1	2	8	9	10	6	6	8	
	2	4	7	7	4	5	5	6	
	3	5	5	5	4	3	2	6	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	40	41	312	303	308	306

************************************************************************
