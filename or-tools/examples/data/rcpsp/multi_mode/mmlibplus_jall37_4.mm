jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 7 10 13 16 17 
2	3	5		32 20 14 11 9 
3	3	10		33 32 31 29 23 20 19 18 14 11 
4	3	7		32 28 27 20 18 12 8 
5	3	3		18 11 6 
6	3	9		36 33 29 27 24 23 22 20 15 
7	3	5		33 23 21 19 11 
8	3	10		36 35 33 31 29 25 24 22 21 19 
9	3	4		33 27 19 12 
10	3	7		43 39 33 31 25 22 15 
11	3	9		43 42 39 36 35 28 25 24 22 
12	3	9		39 37 36 35 31 30 29 24 23 
13	3	8		43 37 36 35 30 29 27 26 
14	3	5		40 35 30 27 21 
15	3	4		42 35 28 19 
16	3	3		33 23 18 
17	3	4		42 40 35 22 
18	3	5		51 43 40 37 26 
19	3	3		37 30 26 
20	3	7		50 49 47 42 40 39 35 
21	3	4		42 41 39 26 
22	3	2		30 26 
23	3	8		50 49 48 47 46 42 40 38 
24	3	3		50 40 34 
25	3	3		49 37 34 
26	3	3		50 49 34 
27	3	3		49 41 34 
28	3	2		40 34 
29	3	7		50 48 47 46 45 42 41 
30	3	6		51 48 47 46 41 38 
31	3	6		50 49 47 46 41 38 
32	3	6		51 49 47 46 41 38 
33	3	5		49 47 46 45 41 
34	3	4		48 47 46 38 
35	3	2		48 38 
36	3	2		48 40 
37	3	2		45 41 
38	3	2		45 44 
39	3	2		48 46 
40	3	1		41 
41	3	1		44 
42	3	1		44 
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
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	6	4	8	8	8	8	5	
	2	8	4	5	7	7	7	5	
	3	9	4	4	6	3	5	5	
3	1	4	9	5	6	5	9	4	
	2	7	6	5	4	5	6	4	
	3	8	5	3	2	3	5	2	
4	1	3	1	1	1	7	10	7	
	2	4	1	1	1	5	6	7	
	3	6	1	1	1	3	6	7	
5	1	3	10	9	6	3	5	7	
	2	9	10	6	5	3	4	5	
	3	10	10	4	4	2	4	5	
6	1	3	3	7	2	7	10	8	
	2	6	1	6	2	7	7	8	
	3	10	1	4	2	7	6	7	
7	1	3	4	6	9	10	9	5	
	2	4	2	5	8	9	8	4	
	3	8	1	1	6	7	5	4	
8	1	6	7	2	9	9	7	4	
	2	7	6	2	9	6	6	3	
	3	8	2	2	9	2	4	2	
9	1	1	5	4	9	10	9	6	
	2	8	4	3	8	8	8	5	
	3	9	2	3	8	7	8	5	
10	1	5	5	3	9	3	3	8	
	2	9	5	2	8	3	1	8	
	3	10	4	2	8	2	1	7	
11	1	1	9	4	6	1	9	7	
	2	2	6	4	4	1	9	7	
	3	10	3	4	3	1	8	3	
12	1	2	6	7	9	3	6	6	
	2	4	5	7	7	3	4	4	
	3	7	4	7	4	3	1	4	
13	1	1	5	10	10	6	10	8	
	2	2	4	10	8	6	7	8	
	3	3	4	10	8	6	6	8	
14	1	3	6	7	3	9	8	6	
	2	8	5	5	1	6	5	6	
	3	10	5	3	1	5	3	6	
15	1	2	10	9	9	2	7	6	
	2	3	8	7	5	1	4	6	
	3	5	7	4	5	1	3	5	
16	1	6	10	10	8	7	5	4	
	2	7	4	9	8	7	2	3	
	3	10	2	9	6	6	2	2	
17	1	1	8	6	8	8	3	4	
	2	2	8	5	6	7	2	3	
	3	4	6	4	6	7	2	1	
18	1	2	8	9	6	4	6	10	
	2	8	8	6	5	2	4	6	
	3	10	8	3	4	1	4	4	
19	1	2	2	9	7	4	10	7	
	2	6	2	8	6	2	6	6	
	3	7	2	8	3	2	5	4	
20	1	5	8	1	7	6	8	9	
	2	6	7	1	5	6	8	8	
	3	8	6	1	4	5	8	6	
21	1	1	2	6	9	2	7	7	
	2	8	2	6	7	2	6	6	
	3	9	2	5	5	2	4	5	
22	1	2	8	4	8	3	8	4	
	2	9	6	3	5	2	6	4	
	3	10	4	3	4	2	6	2	
23	1	7	7	7	6	5	9	4	
	2	8	6	3	6	3	9	3	
	3	9	6	2	4	3	9	3	
24	1	1	9	6	8	6	10	7	
	2	6	7	6	5	4	9	7	
	3	10	7	6	2	4	8	7	
25	1	4	8	5	10	7	10	8	
	2	6	6	2	8	5	9	6	
	3	9	5	2	8	3	7	6	
26	1	6	5	5	10	4	7	4	
	2	7	5	5	4	3	6	4	
	3	10	4	4	1	2	3	3	
27	1	2	7	6	8	6	6	7	
	2	7	4	5	6	5	6	7	
	3	9	3	5	3	3	3	7	
28	1	2	3	4	7	6	8	6	
	2	5	2	2	5	2	5	5	
	3	10	2	1	3	1	4	1	
29	1	4	10	8	2	7	8	5	
	2	5	8	8	2	4	7	4	
	3	9	8	8	2	2	3	2	
30	1	2	8	8	9	4	8	2	
	2	3	7	7	9	3	8	1	
	3	4	3	7	9	3	8	1	
31	1	4	8	6	9	8	5	3	
	2	6	7	6	8	7	4	1	
	3	7	6	2	7	6	1	1	
32	1	2	5	7	8	6	7	9	
	2	6	4	7	6	3	7	9	
	3	9	4	7	6	1	3	9	
33	1	2	3	10	9	6	2	9	
	2	3	3	7	8	4	2	8	
	3	5	3	3	8	3	1	8	
34	1	7	9	10	8	1	7	9	
	2	8	6	9	5	1	5	8	
	3	9	5	9	5	1	5	7	
35	1	6	8	5	5	8	6	5	
	2	9	3	3	4	5	4	5	
	3	10	1	1	4	3	3	4	
36	1	4	6	6	7	8	6	5	
	2	5	5	6	7	7	4	5	
	3	10	5	5	7	6	3	4	
37	1	4	3	6	6	2	10	6	
	2	5	3	4	5	2	9	5	
	3	8	1	2	5	2	8	1	
38	1	6	10	3	3	6	5	7	
	2	7	10	3	2	6	5	6	
	3	8	10	1	2	6	5	6	
39	1	4	5	8	9	7	6	7	
	2	8	3	8	5	7	6	5	
	3	9	2	8	3	7	4	4	
40	1	3	8	8	7	9	7	4	
	2	5	5	8	6	7	5	3	
	3	7	5	8	6	7	4	3	
41	1	6	3	2	9	9	5	7	
	2	7	3	1	6	9	5	5	
	3	8	3	1	5	9	5	4	
42	1	3	4	3	9	5	4	7	
	2	6	4	3	7	4	4	5	
	3	10	3	2	4	4	4	3	
43	1	5	6	6	4	5	7	8	
	2	7	4	5	4	4	6	7	
	3	9	4	5	3	2	6	3	
44	1	6	6	5	4	10	7	4	
	2	7	4	4	3	9	5	4	
	3	8	2	4	2	7	5	4	
45	1	3	2	6	4	6	4	10	
	2	6	1	6	3	6	4	9	
	3	7	1	6	3	6	3	9	
46	1	5	7	8	3	9	10	7	
	2	6	3	6	3	7	6	6	
	3	9	3	6	3	1	4	6	
47	1	3	6	5	8	7	7	8	
	2	5	6	5	4	5	3	7	
	3	7	6	5	4	1	3	6	
48	1	5	8	5	9	3	6	1	
	2	8	8	5	8	3	3	1	
	3	9	8	5	6	3	1	1	
49	1	2	3	3	5	8	5	9	
	2	9	1	2	5	7	5	6	
	3	10	1	1	4	7	5	5	
50	1	2	6	6	7	4	7	8	
	2	8	4	4	7	2	6	6	
	3	9	3	4	7	1	6	3	
51	1	3	6	6	3	7	6	6	
	2	9	5	4	2	5	5	6	
	3	10	4	4	1	3	2	2	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	28	27	255	212	254	241

************************************************************************
