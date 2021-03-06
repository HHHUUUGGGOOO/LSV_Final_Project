jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 7 9 10 12 14 15 
2	3	5		20 17 11 6 5 
3	3	8		24 23 22 21 19 18 17 13 
4	3	8		27 23 21 20 19 18 16 11 
5	3	5		27 25 19 18 8 
6	3	11		35 34 33 32 31 28 27 26 24 23 21 
7	3	9		38 33 32 31 26 24 22 21 20 
8	3	6		33 31 24 23 22 16 
9	3	5		33 31 27 19 16 
10	3	10		51 38 36 35 34 33 32 28 26 21 
11	3	12		51 49 38 37 36 35 34 33 32 30 28 24 
12	3	8		51 38 36 35 33 26 25 21 
13	3	12		50 49 37 36 35 34 32 31 30 29 28 27 
14	3	8		51 38 35 34 32 28 26 21 
15	3	7		38 35 32 27 25 24 21 
16	3	11		51 50 49 37 36 35 34 32 29 28 26 
17	3	9		51 50 49 38 34 31 29 28 26 
18	3	8		50 37 35 33 32 31 28 26 
19	3	7		50 49 42 41 38 37 26 
20	3	7		51 49 48 36 34 30 28 
21	3	7		50 49 48 42 40 37 29 
22	3	7		51 49 47 40 36 35 28 
23	3	7		50 49 48 40 38 36 29 
24	3	6		50 48 47 46 42 29 
25	3	6		49 46 42 41 39 34 
26	3	3		48 45 30 
27	3	4		51 46 40 39 
28	3	4		46 43 42 41 
29	3	3		43 41 39 
30	3	3		46 40 39 
31	3	3		45 40 39 
32	3	4		48 46 45 43 
33	3	3		45 44 43 
34	3	2		47 40 
35	3	2		46 39 
36	3	2		44 41 
37	3	2		47 46 
38	3	1		39 
39	3	1		44 
40	3	1		43 
41	3	1		45 
42	3	1		45 
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
2	1	1	10	7	4	9	6	10	
	2	5	9	7	4	7	5	6	
	3	6	8	7	4	6	4	4	
3	1	5	7	4	9	8	6	2	
	2	8	5	3	4	7	4	1	
	3	9	3	2	3	4	4	1	
4	1	1	3	5	7	5	6	9	
	2	2	3	3	6	4	6	9	
	3	6	3	3	6	3	6	8	
5	1	4	6	5	8	6	6	9	
	2	9	5	2	3	4	5	5	
	3	10	5	2	1	2	5	5	
6	1	1	5	5	6	7	7	9	
	2	2	4	3	3	6	6	8	
	3	3	4	2	2	4	6	7	
7	1	5	6	1	8	3	7	8	
	2	8	5	1	7	2	6	4	
	3	10	2	1	3	1	6	3	
8	1	6	4	3	8	5	5	6	
	2	7	3	3	7	4	4	2	
	3	8	2	2	7	4	4	2	
9	1	5	8	5	6	3	8	7	
	2	8	6	4	6	1	4	7	
	3	9	5	4	4	1	2	6	
10	1	6	9	6	10	5	9	7	
	2	7	8	4	9	4	5	6	
	3	10	7	3	8	3	4	4	
11	1	1	4	7	3	7	9	8	
	2	2	4	5	2	7	4	6	
	3	4	3	3	2	6	3	4	
12	1	2	9	10	6	8	1	8	
	2	8	7	5	5	7	1	5	
	3	9	7	5	4	7	1	5	
13	1	4	9	8	7	10	1	8	
	2	9	7	8	6	8	1	4	
	3	10	4	8	3	8	1	4	
14	1	5	6	10	2	4	7	8	
	2	6	4	9	2	3	5	8	
	3	7	1	9	2	3	3	8	
15	1	3	4	8	6	6	7	9	
	2	4	4	6	4	4	6	8	
	3	5	4	2	4	2	6	8	
16	1	5	9	9	2	9	8	7	
	2	9	9	8	1	7	7	7	
	3	10	9	6	1	7	2	7	
17	1	1	7	8	5	7	9	7	
	2	2	6	4	5	6	8	4	
	3	5	6	3	5	4	6	4	
18	1	5	9	10	8	4	3	5	
	2	8	8	10	4	4	3	4	
	3	9	8	10	3	4	3	3	
19	1	1	7	7	7	6	8	2	
	2	9	6	5	6	6	8	2	
	3	10	5	1	6	5	6	2	
20	1	4	5	5	6	4	9	4	
	2	6	4	4	4	2	4	4	
	3	7	4	4	2	1	2	4	
21	1	1	6	4	6	6	8	9	
	2	2	6	4	4	5	8	4	
	3	8	6	3	3	5	8	4	
22	1	6	5	7	3	10	7	7	
	2	7	4	6	3	7	5	6	
	3	10	3	2	3	6	2	6	
23	1	6	8	5	9	10	9	9	
	2	9	4	4	5	9	9	5	
	3	10	2	3	3	9	9	2	
24	1	4	7	7	7	4	5	3	
	2	8	6	7	5	4	3	2	
	3	9	2	7	5	2	2	2	
25	1	3	7	8	5	7	8	6	
	2	4	6	6	5	5	6	6	
	3	5	5	6	5	4	6	5	
26	1	1	7	9	7	6	2	10	
	2	2	7	9	5	4	2	10	
	3	5	6	8	2	4	2	10	
27	1	2	8	9	8	6	9	5	
	2	5	5	3	6	6	8	5	
	3	10	2	1	6	6	7	3	
28	1	4	9	8	9	7	9	4	
	2	6	8	7	6	4	7	3	
	3	7	6	4	4	4	6	3	
29	1	2	4	2	6	6	2	5	
	2	5	4	2	4	6	2	5	
	3	8	3	2	4	6	1	5	
30	1	2	6	6	5	6	7	5	
	2	3	4	3	4	4	7	4	
	3	10	3	2	2	4	6	2	
31	1	2	5	9	6	8	7	1	
	2	4	5	6	5	6	6	1	
	3	5	4	5	5	4	4	1	
32	1	1	7	6	6	7	6	5	
	2	2	5	5	5	7	3	4	
	3	3	3	5	5	7	2	4	
33	1	1	4	10	8	6	10	2	
	2	4	2	9	7	5	4	2	
	3	8	2	9	7	4	4	1	
34	1	1	7	9	7	6	8	5	
	2	6	7	7	6	5	8	5	
	3	9	7	3	6	4	8	2	
35	1	1	8	9	8	6	10	9	
	2	4	8	6	7	5	5	6	
	3	9	8	3	5	2	4	5	
36	1	1	6	6	9	9	9	3	
	2	7	5	6	4	9	8	2	
	3	9	4	6	3	8	8	1	
37	1	1	8	4	1	5	6	6	
	2	7	6	3	1	3	6	5	
	3	8	3	2	1	3	5	3	
38	1	2	6	5	6	9	7	10	
	2	5	5	4	4	6	5	7	
	3	8	3	3	4	4	4	3	
39	1	4	8	10	2	9	2	8	
	2	6	6	8	1	5	1	8	
	3	8	5	8	1	3	1	7	
40	1	2	6	5	5	5	3	10	
	2	3	5	5	2	3	3	9	
	3	9	5	3	1	3	2	8	
41	1	1	5	8	8	4	10	5	
	2	5	4	7	8	4	4	4	
	3	10	4	7	7	4	4	2	
42	1	2	7	5	8	7	6	8	
	2	4	7	4	6	3	5	7	
	3	9	7	2	4	3	4	5	
43	1	5	5	5	10	8	8	7	
	2	6	5	3	8	5	7	5	
	3	7	5	2	6	4	5	4	
44	1	1	7	9	8	7	5	4	
	2	4	3	9	8	7	4	4	
	3	8	3	9	7	4	4	4	
45	1	3	9	1	7	7	3	9	
	2	4	7	1	5	6	3	6	
	3	10	7	1	3	6	2	4	
46	1	4	4	4	7	1	10	6	
	2	8	4	3	6	1	8	5	
	3	10	4	2	4	1	7	4	
47	1	1	5	8	9	4	3	8	
	2	5	5	6	5	3	2	3	
	3	10	2	6	4	3	1	3	
48	1	2	9	8	4	4	4	6	
	2	6	8	7	3	2	4	4	
	3	8	6	4	3	1	3	4	
49	1	7	9	4	6	6	6	8	
	2	8	8	2	5	4	6	7	
	3	9	8	2	5	2	6	7	
50	1	2	6	10	8	8	6	8	
	2	4	6	6	5	7	4	7	
	3	8	5	2	5	5	1	6	
51	1	3	7	10	6	9	4	3	
	2	5	7	8	4	9	4	2	
	3	10	7	8	3	9	1	2	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	24	25	227	236	232	240

************************************************************************
