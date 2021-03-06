jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 8 11 12 
2	3	7		22 18 16 14 13 10 7 
3	3	7		22 20 17 16 14 13 9 
4	3	9		30 28 27 26 25 19 18 17 16 
5	3	5		26 25 19 17 9 
6	3	6		27 26 22 18 17 15 
7	3	9		37 30 29 28 27 25 20 19 17 
8	3	4		31 28 16 13 
9	3	7		50 30 28 27 23 21 18 
10	3	9		49 37 30 29 28 27 24 23 19 
11	3	7		50 39 34 27 23 22 18 
12	3	5		31 29 22 20 17 
13	3	8		49 37 30 29 27 24 23 19 
14	3	8		50 49 34 30 29 27 25 24 
15	3	11		51 50 48 46 45 37 36 35 33 30 28 
16	3	7		50 49 39 33 29 24 23 
17	3	6		51 49 47 24 23 21 
18	3	7		45 44 37 33 31 29 24 
19	3	11		51 50 47 46 44 39 36 35 34 33 32 
20	3	10		50 49 47 46 45 44 43 38 35 32 
21	3	8		48 46 44 43 39 38 35 32 
22	3	5		49 45 37 33 32 
23	3	7		48 46 44 43 41 38 36 
24	3	6		46 43 38 36 35 32 
25	3	5		48 45 43 33 32 
26	3	6		50 48 44 41 39 38 
27	3	5		51 46 44 43 32 
28	3	3		44 34 32 
29	3	3		43 35 32 
30	3	3		47 44 32 
31	3	3		49 47 32 
32	3	3		42 41 40 
33	3	2		41 38 
34	3	2		43 38 
35	3	2		42 41 
36	3	2		42 40 
37	3	2		47 41 
38	3	1		40 
39	3	1		45 
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
2	1	1	3	1	7	9	
	2	6	3	1	4	4	
	3	10	3	1	3	1	
3	1	4	7	7	6	4	
	2	5	7	5	3	3	
	3	7	7	1	2	3	
4	1	2	5	7	4	8	
	2	4	3	5	4	8	
	3	6	3	3	4	6	
5	1	2	7	2	6	1	
	2	3	5	2	5	1	
	3	4	5	1	4	1	
6	1	1	8	9	7	6	
	2	4	7	4	3	3	
	3	5	7	3	1	1	
7	1	4	8	7	7	1	
	2	5	6	7	6	1	
	3	7	3	6	1	1	
8	1	4	4	6	9	5	
	2	8	4	4	9	3	
	3	9	3	2	9	2	
9	1	8	7	9	7	8	
	2	9	6	6	6	6	
	3	10	4	1	4	3	
10	1	2	5	5	8	6	
	2	6	5	4	8	5	
	3	10	5	2	7	4	
11	1	1	9	7	2	3	
	2	5	8	5	2	3	
	3	8	5	3	2	2	
12	1	6	9	7	4	6	
	2	8	7	6	4	4	
	3	9	5	3	4	2	
13	1	1	5	6	10	6	
	2	3	2	5	7	5	
	3	4	2	4	5	3	
14	1	3	6	4	3	7	
	2	7	5	3	2	6	
	3	9	5	3	2	4	
15	1	4	2	2	8	3	
	2	6	2	2	7	2	
	3	7	2	1	6	1	
16	1	3	4	4	6	9	
	2	6	3	3	6	9	
	3	7	3	3	5	9	
17	1	4	8	4	6	6	
	2	5	4	3	6	4	
	3	10	4	3	1	4	
18	1	2	6	3	4	4	
	2	3	4	2	3	3	
	3	6	2	2	3	2	
19	1	2	9	6	8	7	
	2	3	6	5	5	6	
	3	5	5	3	3	4	
20	1	2	9	5	6	4	
	2	7	8	3	2	3	
	3	8	8	1	1	3	
21	1	5	6	10	5	5	
	2	6	6	10	5	4	
	3	9	6	10	5	2	
22	1	3	9	9	5	8	
	2	5	8	4	4	8	
	3	10	8	4	4	7	
23	1	1	10	9	2	7	
	2	4	7	7	2	6	
	3	9	3	6	2	6	
24	1	2	10	8	7	7	
	2	3	9	6	7	6	
	3	8	8	4	4	4	
25	1	4	7	4	3	8	
	2	7	4	2	2	4	
	3	8	4	2	2	3	
26	1	2	8	8	8	5	
	2	3	6	8	7	5	
	3	9	5	8	6	3	
27	1	1	5	9	4	7	
	2	4	4	6	3	7	
	3	5	4	6	3	6	
28	1	6	5	6	6	6	
	2	7	3	5	4	6	
	3	8	2	4	3	4	
29	1	6	6	8	2	6	
	2	7	4	6	2	5	
	3	8	3	6	2	4	
30	1	1	3	9	6	6	
	2	5	1	8	5	6	
	3	9	1	6	1	6	
31	1	5	3	8	3	7	
	2	6	2	8	3	7	
	3	8	2	8	3	6	
32	1	3	2	3	8	4	
	2	7	1	2	7	4	
	3	8	1	1	7	3	
33	1	4	7	10	6	6	
	2	6	6	10	6	6	
	3	7	6	10	2	3	
34	1	6	8	5	8	7	
	2	8	6	3	6	6	
	3	9	3	3	3	6	
35	1	2	6	9	8	9	
	2	6	5	6	8	6	
	3	8	5	4	7	6	
36	1	1	7	2	8	2	
	2	3	6	2	5	2	
	3	6	6	2	3	1	
37	1	3	6	2	10	9	
	2	5	5	2	9	7	
	3	9	3	2	8	4	
38	1	7	4	7	9	9	
	2	8	2	6	8	9	
	3	9	2	6	6	9	
39	1	1	7	10	6	5	
	2	3	4	5	5	5	
	3	10	2	4	5	3	
40	1	3	1	6	9	4	
	2	5	1	6	4	3	
	3	10	1	6	2	2	
41	1	1	3	3	7	7	
	2	2	2	3	5	6	
	3	10	2	1	3	6	
42	1	5	2	6	7	8	
	2	6	1	4	5	4	
	3	8	1	4	3	4	
43	1	3	4	9	8	8	
	2	4	3	5	5	8	
	3	7	1	4	4	8	
44	1	2	10	7	7	3	
	2	3	8	5	4	3	
	3	9	8	1	3	3	
45	1	1	8	7	4	10	
	2	2	5	6	3	8	
	3	4	5	6	3	6	
46	1	2	6	9	8	9	
	2	4	5	9	6	5	
	3	5	4	9	4	4	
47	1	1	8	4	4	7	
	2	4	7	3	4	6	
	3	9	6	1	4	5	
48	1	4	2	7	9	9	
	2	6	2	3	8	7	
	3	8	1	1	4	7	
49	1	1	6	4	10	6	
	2	4	4	2	7	3	
	3	5	1	2	3	1	
50	1	3	5	3	7	9	
	2	9	3	3	6	6	
	3	10	2	3	4	6	
51	1	5	6	6	6	2	
	2	7	4	3	5	1	
	3	9	4	2	5	1	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	32	37	284	280

************************************************************************
