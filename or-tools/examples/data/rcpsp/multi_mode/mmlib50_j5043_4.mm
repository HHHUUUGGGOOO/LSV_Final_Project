jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	11		2 3 4 5 6 7 8 9 10 14 17 
2	3	7		51 23 20 19 18 16 13 
3	3	5		24 22 21 19 11 
4	3	7		23 22 21 20 19 16 15 
5	3	4		24 21 19 11 
6	3	9		51 33 29 24 23 22 21 20 19 
7	3	5		32 23 21 19 12 
8	3	5		51 32 30 23 13 
9	3	8		51 33 32 29 25 24 21 19 
10	3	7		51 33 27 26 20 19 18 
11	3	5		51 31 23 20 16 
12	3	12		51 50 49 48 33 31 30 29 28 27 26 25 
13	3	9		50 49 48 33 29 28 25 24 21 
14	3	9		50 48 33 32 31 30 28 25 21 
15	3	9		51 49 48 32 30 29 28 27 25 
16	3	9		48 42 33 32 29 28 27 26 25 
17	3	9		51 49 44 42 33 32 27 26 25 
18	3	7		49 48 32 30 29 28 25 
19	3	11		50 49 48 47 44 43 39 34 31 30 28 
20	3	14		50 49 48 47 45 44 43 40 39 38 36 34 32 30 
21	3	8		45 44 43 42 40 34 27 26 
22	3	7		49 48 46 42 41 31 25 
23	3	5		42 41 37 34 27 
24	3	6		45 44 41 39 36 31 
25	3	6		45 43 40 39 36 34 
26	3	6		46 41 38 37 36 35 
27	3	5		47 39 38 36 35 
28	3	5		46 41 40 36 35 
29	3	5		44 43 38 36 35 
30	3	3		42 37 35 
31	3	3		40 38 37 
32	3	2		37 35 
33	3	2		39 36 
34	3	1		35 
35	3	1		52 
36	3	1		52 
37	3	1		52 
38	3	1		52 
39	3	1		52 
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
2	1	3	5	5	6	0	
	2	4	4	4	5	0	
	3	9	3	4	4	0	
3	1	2	8	10	9	0	
	2	3	7	10	7	0	
	3	10	5	10	0	2	
4	1	6	5	2	6	0	
	2	9	5	2	0	3	
	3	10	5	2	2	0	
5	1	5	4	2	10	0	
	2	6	4	2	7	0	
	3	8	4	2	0	2	
6	1	4	8	4	7	0	
	2	5	6	4	5	0	
	3	6	5	4	5	0	
7	1	6	10	4	0	5	
	2	10	5	4	0	4	
	3	10	2	4	2	0	
8	1	1	6	3	7	0	
	2	5	3	2	6	0	
	3	9	2	1	3	0	
9	1	1	6	7	0	9	
	2	4	3	6	7	0	
	3	7	1	6	0	3	
10	1	2	6	7	9	0	
	2	9	5	4	6	0	
	3	10	1	2	4	0	
11	1	6	6	7	6	0	
	2	10	5	4	5	0	
	3	10	4	2	0	7	
12	1	6	6	5	6	0	
	2	8	4	3	5	0	
	3	9	3	3	4	0	
13	1	3	8	1	9	0	
	2	4	8	1	7	0	
	3	7	8	1	0	2	
14	1	5	3	9	6	0	
	2	6	2	9	0	3	
	3	8	2	9	2	0	
15	1	7	6	10	10	0	
	2	8	4	8	7	0	
	3	9	1	8	0	2	
16	1	2	7	9	7	0	
	2	6	6	8	5	0	
	3	9	5	8	5	0	
17	1	2	6	4	0	5	
	2	3	5	2	0	4	
	3	7	4	2	2	0	
18	1	2	2	6	7	0	
	2	4	1	5	6	0	
	3	6	1	3	3	0	
19	1	2	6	8	0	9	
	2	7	5	4	7	0	
	3	8	5	4	0	3	
20	1	4	9	7	9	0	
	2	9	4	6	6	0	
	3	10	2	4	4	0	
21	1	1	6	7	6	0	
	2	7	5	6	5	0	
	3	10	4	6	0	7	
22	1	5	10	5	0	7	
	2	6	10	4	0	7	
	3	6	10	4	1	0	
23	1	3	3	5	8	0	
	2	3	3	4	0	4	
	3	7	3	2	6	0	
24	1	3	6	5	0	9	
	2	4	6	5	3	0	
	3	8	6	5	0	5	
25	1	3	7	2	0	4	
	2	5	5	1	0	3	
	3	6	4	1	0	3	
26	1	4	4	9	3	0	
	2	5	4	8	0	8	
	3	9	3	7	1	0	
27	1	6	3	9	6	0	
	2	7	2	4	4	0	
	3	8	2	1	2	0	
28	1	3	4	4	3	0	
	2	6	2	3	2	0	
	3	9	1	2	1	0	
29	1	1	3	8	8	0	
	2	5	3	7	0	2	
	3	10	3	5	0	1	
30	1	1	10	7	0	9	
	2	2	6	6	6	0	
	3	8	4	5	0	5	
31	1	1	9	7	8	0	
	2	6	5	4	3	0	
	3	7	5	3	3	0	
32	1	1	8	6	0	8	
	2	2	8	6	0	7	
	3	9	7	5	5	0	
33	1	5	7	7	8	0	
	2	5	5	6	0	4	
	3	6	5	6	8	0	
34	1	3	9	6	0	6	
	2	5	8	4	7	0	
	3	8	7	1	0	1	
35	1	4	4	5	0	6	
	2	8	4	5	0	2	
	3	10	4	5	0	1	
36	1	4	7	10	7	0	
	2	5	6	6	0	6	
	3	7	5	2	2	0	
37	1	3	7	7	7	0	
	2	6	7	4	5	0	
	3	9	7	3	4	0	
38	1	1	3	6	5	0	
	2	3	2	6	4	0	
	3	10	1	3	3	0	
39	1	3	8	8	5	0	
	2	4	6	7	0	3	
	3	8	6	6	0	3	
40	1	1	9	8	0	3	
	2	4	5	5	4	0	
	3	9	1	3	0	3	
41	1	1	10	9	8	0	
	2	4	9	8	7	0	
	3	6	9	8	5	0	
42	1	4	8	7	0	2	
	2	6	5	6	0	2	
	3	7	3	6	0	2	
43	1	7	5	9	0	7	
	2	9	5	4	3	0	
	3	10	5	3	2	0	
44	1	3	8	5	0	3	
	2	3	5	3	6	0	
	3	9	5	3	0	1	
45	1	1	6	5	8	0	
	2	5	5	4	0	3	
	3	10	4	3	6	0	
46	1	2	3	5	0	4	
	2	3	3	4	2	0	
	3	7	3	4	0	1	
47	1	4	3	9	5	0	
	2	6	3	5	0	3	
	3	7	2	1	0	3	
48	1	1	6	7	0	3	
	2	2	6	6	1	0	
	3	3	5	5	1	0	
49	1	1	8	9	4	0	
	2	4	8	6	3	0	
	3	8	7	3	1	0	
50	1	4	6	8	0	8	
	2	7	5	8	0	7	
	3	9	4	8	3	0	
51	1	3	6	8	8	0	
	2	6	6	6	8	0	
	3	9	6	2	6	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	27	28	112	46

************************************************************************
