jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	11		2 3 4 5 6 7 10 11 12 13 14 
2	3	8		31 27 26 22 18 16 9 8 
3	3	6		27 24 21 19 15 8 
4	3	5		27 24 19 16 9 
5	3	4		26 25 24 9 
6	3	3		21 9 8 
7	3	7		35 33 31 29 26 19 16 
8	3	6		33 29 25 23 20 17 
9	3	5		33 29 23 20 17 
10	3	5		33 31 23 20 17 
11	3	5		33 31 26 20 17 
12	3	10		38 37 36 33 32 30 29 27 25 23 
13	3	6		43 37 33 31 25 17 
14	3	10		38 37 36 35 34 32 30 29 28 26 
15	3	7		42 34 33 31 30 26 20 
16	3	8		44 43 37 36 34 32 30 28 
17	3	8		44 40 38 36 35 34 32 30 
18	3	7		50 43 40 39 38 30 29 
19	3	6		43 39 38 34 30 25 
20	3	6		43 41 37 36 35 28 
21	3	7		50 43 42 40 39 37 30 
22	3	7		51 44 41 40 36 35 32 
23	3	7		44 43 42 40 39 35 34 
24	3	6		51 49 48 43 41 33 
25	3	7		51 50 48 46 42 41 40 
26	3	6		50 49 48 43 40 39 
27	3	5		50 48 41 39 35 
28	3	6		51 49 48 46 40 39 
29	3	5		48 47 46 44 42 
30	3	5		51 48 46 45 41 
31	3	5		50 48 46 45 39 
32	3	4		47 46 45 42 
33	3	3		46 44 39 
34	3	4		50 49 48 46 
35	3	3		49 46 45 
36	3	3		50 48 45 
37	3	3		48 47 46 
38	3	3		49 48 45 
39	3	1		47 
40	3	1		45 
41	3	1		47 
42	3	1		49 
43	3	1		46 
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
2	1	1	4	0	8	10	
	2	4	0	4	7	10	
	3	10	0	4	7	9	
3	1	1	0	6	5	6	
	2	1	2	0	5	4	
	3	5	0	5	5	3	
4	1	4	0	9	9	8	
	2	7	0	6	9	5	
	3	8	0	3	9	4	
5	1	2	6	0	5	9	
	2	4	0	2	3	7	
	3	7	6	0	3	2	
6	1	1	7	0	6	9	
	2	4	7	0	6	8	
	3	7	0	3	4	8	
7	1	2	9	0	4	6	
	2	3	9	0	2	6	
	3	6	9	0	2	4	
8	1	7	0	8	8	8	
	2	9	0	7	5	4	
	3	10	0	5	4	1	
9	1	2	7	0	3	6	
	2	5	0	5	3	6	
	3	6	3	0	3	4	
10	1	3	0	7	7	8	
	2	4	0	7	6	4	
	3	8	0	4	3	3	
11	1	1	6	0	6	7	
	2	1	0	4	4	5	
	3	6	0	4	4	4	
12	1	5	0	3	5	6	
	2	6	4	0	2	6	
	3	9	0	2	2	6	
13	1	1	9	0	8	4	
	2	4	5	0	5	3	
	3	6	0	2	3	3	
14	1	4	6	0	10	6	
	2	6	5	0	5	5	
	3	9	5	0	4	3	
15	1	7	0	9	6	4	
	2	9	0	6	3	4	
	3	10	2	0	3	2	
16	1	1	5	0	10	5	
	2	3	0	9	6	3	
	3	5	2	0	4	1	
17	1	1	5	0	6	7	
	2	6	0	5	4	4	
	3	10	0	4	3	3	
18	1	3	0	7	8	8	
	2	6	0	5	8	6	
	3	9	0	3	7	6	
19	1	4	0	6	7	8	
	2	5	0	4	5	6	
	3	6	0	2	3	1	
20	1	4	5	0	4	8	
	2	5	4	0	4	8	
	3	6	0	1	3	8	
21	1	7	7	0	10	10	
	2	8	0	4	9	7	
	3	10	0	4	8	6	
22	1	5	0	3	10	3	
	2	7	5	0	6	2	
	3	10	0	2	6	1	
23	1	2	6	0	7	6	
	2	6	0	7	7	5	
	3	10	3	0	6	4	
24	1	2	1	0	7	8	
	2	6	0	1	6	7	
	3	8	1	0	4	7	
25	1	2	0	3	8	3	
	2	6	5	0	6	3	
	3	10	0	1	5	3	
26	1	5	0	3	7	8	
	2	6	7	0	7	5	
	3	7	0	2	7	1	
27	1	2	0	2	7	4	
	2	10	0	2	7	2	
	3	10	6	0	5	1	
28	1	3	0	7	6	5	
	2	4	0	6	4	4	
	3	7	0	6	3	3	
29	1	3	0	1	5	6	
	2	4	0	1	5	3	
	3	8	3	0	3	3	
30	1	6	8	0	8	8	
	2	7	6	0	4	7	
	3	10	5	0	2	6	
31	1	1	5	0	1	7	
	2	3	0	5	1	5	
	3	10	0	4	1	5	
32	1	7	9	0	7	10	
	2	8	4	0	5	10	
	3	9	0	3	5	10	
33	1	1	0	6	5	4	
	2	3	6	0	3	4	
	3	4	6	0	3	3	
34	1	5	0	6	3	2	
	2	6	7	0	3	1	
	3	8	0	4	1	1	
35	1	2	0	5	4	10	
	2	3	9	0	3	9	
	3	4	9	0	3	8	
36	1	6	0	10	6	6	
	2	8	0	8	4	3	
	3	9	0	8	2	2	
37	1	2	4	0	7	5	
	2	4	4	0	5	3	
	3	6	4	0	4	2	
38	1	4	0	3	7	8	
	2	8	3	0	6	6	
	3	9	2	0	5	4	
39	1	3	9	0	7	6	
	2	3	0	4	6	2	
	3	6	6	0	4	2	
40	1	3	0	5	6	8	
	2	4	5	0	5	7	
	3	6	4	0	5	6	
41	1	4	0	7	6	9	
	2	6	6	0	3	9	
	3	7	5	0	3	9	
42	1	3	7	0	5	10	
	2	5	5	0	4	9	
	3	6	4	0	3	8	
43	1	4	0	5	5	5	
	2	6	2	0	4	4	
	3	9	2	0	2	4	
44	1	3	0	10	5	9	
	2	9	0	8	4	5	
	3	10	0	8	1	3	
45	1	2	0	9	9	8	
	2	3	0	8	7	4	
	3	8	0	8	7	3	
46	1	4	0	9	6	8	
	2	5	0	9	5	5	
	3	9	0	9	3	3	
47	1	1	0	6	8	3	
	2	8	5	0	8	3	
	3	9	5	0	8	2	
48	1	5	0	3	5	5	
	2	6	4	0	4	4	
	3	7	0	3	3	3	
49	1	1	6	0	1	5	
	2	4	6	0	1	4	
	3	6	4	0	1	2	
50	1	4	9	0	10	8	
	2	6	7	0	4	6	
	3	8	0	4	2	6	
51	1	2	0	8	10	8	
	2	9	6	0	9	8	
	3	10	0	3	9	8	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	50	39	292	305

************************************************************************
