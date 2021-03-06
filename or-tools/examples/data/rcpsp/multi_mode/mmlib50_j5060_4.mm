jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	14		2 3 5 6 7 8 9 10 12 13 14 15 16 18 
2	3	3		24 11 4 
3	3	4		34 28 26 11 
4	3	7		51 34 30 27 26 21 17 
5	3	7		51 37 34 31 26 25 20 
6	3	7		51 34 32 28 26 25 24 
7	3	5		28 27 25 23 17 
8	3	6		34 29 28 24 23 22 
9	3	4		34 22 21 19 
10	3	7		50 34 31 30 27 25 21 
11	3	6		32 31 30 25 22 21 
12	3	6		51 49 31 26 22 21 
13	3	6		51 49 35 31 28 25 
14	3	6		49 32 31 29 27 26 
15	3	6		50 49 35 28 27 25 
16	3	8		51 50 49 48 35 33 31 28 
17	3	6		49 37 35 32 31 29 
18	3	4		51 37 34 25 
19	3	5		50 49 32 31 29 
20	3	6		50 49 39 35 32 30 
21	3	5		39 37 36 35 29 
22	3	5		50 47 45 36 27 
23	3	7		50 48 47 39 36 35 33 
24	3	5		50 49 48 35 30 
25	3	4		45 39 36 29 
26	3	6		50 47 43 39 36 35 
27	3	5		48 39 38 37 33 
28	3	3		44 37 30 
29	3	4		48 47 38 33 
30	3	6		47 46 45 43 41 36 
31	3	5		45 44 41 39 36 
32	3	4		45 43 38 36 
33	3	6		46 44 43 42 41 40 
34	3	4		49 44 43 36 
35	3	4		45 44 40 38 
36	3	2		42 40 
37	3	2		43 40 
38	3	1		41 
39	3	1		40 
40	3	1		52 
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
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	2	6	8	6	1	
	2	3	5	8	5	1	
	3	9	3	8	3	1	
3	1	4	7	7	5	8	
	2	5	7	7	5	7	
	3	10	7	4	5	6	
4	1	3	10	9	6	5	
	2	4	10	8	6	5	
	3	5	10	7	5	3	
5	1	3	3	9	1	7	
	2	8	2	7	1	4	
	3	10	2	7	1	3	
6	1	2	5	5	7	10	
	2	5	5	3	7	8	
	3	7	5	3	3	8	
7	1	1	8	4	9	8	
	2	5	7	3	9	3	
	3	9	4	2	8	3	
8	1	1	2	4	7	6	
	2	3	2	2	5	6	
	3	5	2	1	3	2	
9	1	2	3	10	6	5	
	2	7	1	6	4	4	
	3	8	1	5	3	3	
10	1	3	4	7	5	8	
	2	5	4	5	4	7	
	3	7	4	4	3	6	
11	1	3	8	7	8	8	
	2	5	8	4	4	7	
	3	8	8	3	1	7	
12	1	3	8	7	7	7	
	2	5	4	4	6	7	
	3	6	4	2	6	7	
13	1	2	7	4	6	7	
	2	4	6	3	6	3	
	3	9	3	2	4	1	
14	1	8	8	8	2	3	
	2	9	8	7	2	2	
	3	10	8	7	1	2	
15	1	6	3	7	3	4	
	2	7	3	7	3	2	
	3	8	3	3	3	2	
16	1	4	7	10	6	6	
	2	5	6	9	6	5	
	3	8	3	8	5	5	
17	1	6	9	10	8	9	
	2	8	7	7	7	5	
	3	9	7	4	5	4	
18	1	2	8	5	7	5	
	2	3	6	4	6	5	
	3	9	5	3	3	3	
19	1	4	6	9	6	7	
	2	8	5	8	5	5	
	3	9	4	7	4	4	
20	1	1	7	7	10	2	
	2	5	6	6	6	2	
	3	10	4	4	5	2	
21	1	1	8	8	8	8	
	2	6	6	7	8	5	
	3	7	4	7	7	4	
22	1	2	10	9	6	10	
	2	3	7	6	5	8	
	3	9	4	6	2	6	
23	1	1	9	8	10	1	
	2	6	9	7	9	1	
	3	7	8	4	9	1	
24	1	4	6	4	7	5	
	2	6	5	4	6	3	
	3	10	2	3	4	3	
25	1	1	7	6	4	4	
	2	2	5	4	2	3	
	3	3	5	3	1	2	
26	1	2	10	6	9	6	
	2	6	6	3	8	6	
	3	7	2	1	7	5	
27	1	1	10	7	8	4	
	2	3	10	7	6	4	
	3	6	10	6	6	4	
28	1	2	3	7	7	10	
	2	4	1	5	4	6	
	3	9	1	5	3	6	
29	1	2	6	6	10	8	
	2	4	3	5	10	7	
	3	7	2	3	10	4	
30	1	1	7	8	7	5	
	2	3	6	8	7	2	
	3	4	6	7	6	1	
31	1	2	6	7	5	9	
	2	3	5	7	5	7	
	3	7	4	6	5	7	
32	1	1	7	6	6	6	
	2	4	5	5	5	6	
	3	6	3	5	3	5	
33	1	1	7	7	6	8	
	2	2	3	6	2	7	
	3	10	2	4	2	6	
34	1	1	7	9	8	4	
	2	4	5	4	6	3	
	3	9	5	1	3	3	
35	1	1	10	9	7	8	
	2	2	8	7	6	6	
	3	4	7	6	6	6	
36	1	4	9	8	9	9	
	2	7	8	5	8	5	
	3	9	7	5	7	4	
37	1	1	6	6	6	5	
	2	3	3	4	4	4	
	3	8	3	4	2	4	
38	1	5	4	8	7	8	
	2	8	3	7	7	8	
	3	9	2	7	7	5	
39	1	4	4	5	7	6	
	2	7	3	4	4	6	
	3	10	2	2	2	5	
40	1	6	8	9	6	4	
	2	7	5	7	5	4	
	3	8	4	6	5	4	
41	1	2	9	6	6	6	
	2	3	8	5	5	4	
	3	6	7	4	4	2	
42	1	6	7	7	9	5	
	2	9	7	5	7	5	
	3	10	6	3	4	5	
43	1	1	10	7	5	4	
	2	3	7	7	4	2	
	3	8	6	6	4	2	
44	1	3	9	9	1	3	
	2	5	8	8	1	1	
	3	6	7	8	1	1	
45	1	3	4	1	5	8	
	2	5	4	1	4	7	
	3	6	3	1	3	7	
46	1	1	6	4	6	10	
	2	3	6	3	5	10	
	3	10	4	3	4	10	
47	1	4	4	8	8	5	
	2	7	3	5	6	5	
	3	10	3	4	3	5	
48	1	1	7	8	6	8	
	2	6	7	6	3	6	
	3	8	5	4	3	6	
49	1	3	4	9	3	8	
	2	5	4	8	3	6	
	3	9	4	7	3	2	
50	1	3	8	5	7	10	
	2	8	6	4	7	9	
	3	10	2	2	1	9	
51	1	2	8	9	8	5	
	2	3	6	7	6	4	
	3	4	4	7	4	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	44	52	292	289

************************************************************************
