jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 6 8 9 11 14 
2	3	3		15 7 5 
3	3	6		24 20 16 13 12 10 
4	3	1		5 
5	3	5		24 17 16 13 10 
6	3	5		19 17 16 15 13 
7	3	4		24 21 19 12 
8	3	4		21 17 16 10 
9	3	5		25 24 22 21 19 
10	3	4		25 22 19 18 
11	3	3		29 19 17 
12	3	2		22 17 
13	3	5		28 25 23 22 21 
14	3	5		28 24 23 22 21 
15	3	4		29 25 24 18 
16	3	2		22 18 
17	3	2		25 18 
18	3	4		35 32 28 23 
19	3	4		35 32 28 23 
20	3	3		29 25 23 
21	3	4		35 32 27 26 
22	3	4		35 33 31 29 
23	3	2		27 26 
24	3	3		36 35 27 
25	3	4		36 35 33 31 
26	3	3		39 34 30 
27	3	3		39 33 31 
28	3	3		41 36 33 
29	3	3		39 36 34 
30	3	1		31 
31	3	4		41 40 38 37 
32	3	3		41 38 36 
33	3	3		51 40 38 
34	3	4		51 44 43 38 
35	3	2		38 37 
36	3	2		43 37 
37	3	3		51 44 42 
38	3	2		45 42 
39	3	2		49 41 
40	3	2		44 43 
41	3	4		51 50 47 46 
42	3	3		50 49 47 
43	3	3		50 49 46 
44	3	2		49 46 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	9	7	22	19	1	18	7	22	26	
	2	14	7	18	11	1	15	6	16	25	
	3	22	2	17	11	1	5	4	11	24	
3	1	2	22	15	22	24	15	29	29	25	
	2	14	20	13	18	21	11	28	24	16	
	3	24	15	10	17	20	6	27	20	10	
4	1	13	23	23	24	20	18	13	16	21	
	2	18	22	16	22	18	16	9	14	17	
	3	28	22	13	20	14	14	7	10	13	
5	1	3	8	13	24	15	13	22	15	18	
	2	16	5	9	18	15	9	18	14	12	
	3	26	4	7	17	14	7	15	13	9	
6	1	8	21	23	19	19	23	14	12	26	
	2	17	18	23	18	13	19	11	7	26	
	3	19	16	16	16	7	8	7	4	26	
7	1	5	20	27	21	7	14	18	24	18	
	2	26	16	27	18	7	8	12	23	14	
	3	30	13	24	16	5	4	10	23	10	
8	1	10	26	21	24	25	24	14	4	22	
	2	17	21	16	23	22	24	13	4	22	
	3	18	11	9	21	19	22	13	4	16	
9	1	12	23	16	12	26	25	22	30	29	
	2	18	21	13	9	26	19	18	27	23	
	3	25	19	6	7	26	18	17	24	19	
10	1	2	20	19	14	22	13	22	20	16	
	2	3	15	14	9	19	9	20	19	9	
	3	8	14	8	6	14	6	20	19	5	
11	1	8	8	5	13	24	29	25	6	17	
	2	11	7	5	10	14	15	22	3	17	
	3	27	2	3	4	8	10	17	3	17	
12	1	7	26	7	12	27	8	23	23	9	
	2	12	22	5	8	26	7	23	16	4	
	3	13	18	4	8	21	7	21	14	4	
13	1	13	5	9	16	17	29	23	7	28	
	2	16	4	6	13	10	13	15	5	21	
	3	24	2	6	8	4	7	14	4	13	
14	1	4	20	26	25	13	21	24	29	3	
	2	19	9	22	25	9	14	16	25	2	
	3	24	6	19	23	6	10	11	21	1	
15	1	11	27	13	14	20	12	19	10	18	
	2	12	24	13	14	17	9	17	8	15	
	3	29	14	13	13	17	9	14	5	12	
16	1	9	21	22	22	17	27	22	7	22	
	2	17	13	19	20	16	25	20	7	19	
	3	26	8	15	17	15	24	20	6	15	
17	1	4	25	25	11	15	4	29	21	10	
	2	22	24	22	11	12	4	18	19	8	
	3	25	22	16	11	8	4	17	2	7	
18	1	2	17	21	30	21	21	14	23	24	
	2	18	15	19	27	20	18	11	15	15	
	3	30	9	2	24	17	16	7	11	10	
19	1	11	19	27	11	19	23	10	11	11	
	2	13	19	12	9	13	12	9	10	9	
	3	20	16	4	9	13	4	9	10	7	
20	1	7	18	27	4	22	22	15	13	26	
	2	11	12	21	4	16	16	15	11	21	
	3	20	12	19	4	15	14	15	11	13	
21	1	4	10	20	16	27	23	14	21	12	
	2	7	6	10	15	19	21	9	13	8	
	3	14	2	9	15	15	17	8	9	6	
22	1	15	18	24	13	13	20	30	17	28	
	2	24	17	24	10	10	15	30	7	24	
	3	27	14	23	7	4	9	30	4	17	
23	1	2	17	18	19	22	23	19	21	20	
	2	25	13	16	18	19	19	15	16	20	
	3	26	12	9	17	17	17	14	15	20	
24	1	1	21	23	23	11	28	28	15	21	
	2	10	20	15	23	11	19	27	11	14	
	3	14	7	11	17	8	6	26	8	1	
25	1	7	13	17	24	16	26	26	23	21	
	2	28	9	13	21	12	24	25	11	15	
	3	30	7	12	20	8	24	23	8	10	
26	1	7	24	21	23	22	20	18	4	24	
	2	13	20	21	22	9	15	12	3	15	
	3	14	14	14	22	7	6	8	3	13	
27	1	3	16	23	26	16	25	23	8	15	
	2	13	16	20	23	9	25	19	6	15	
	3	23	16	17	15	7	25	18	2	3	
28	1	13	12	5	11	15	18	14	28	21	
	2	21	12	2	10	13	14	12	14	9	
	3	25	12	2	8	11	11	10	7	9	
29	1	7	29	17	27	5	11	21	17	11	
	2	17	28	15	21	4	9	19	12	8	
	3	23	25	14	7	2	7	10	10	6	
30	1	1	17	20	22	23	20	28	17	22	
	2	18	16	17	18	19	12	26	16	18	
	3	22	15	15	7	16	11	25	10	11	
31	1	12	25	27	15	25	26	19	7	24	
	2	24	25	18	11	17	23	17	6	20	
	3	25	25	12	7	3	21	13	6	15	
32	1	10	30	25	8	21	14	24	16	14	
	2	23	13	25	6	17	13	23	12	13	
	3	26	8	23	4	17	13	16	9	5	
33	1	4	22	19	18	25	28	12	17	10	
	2	10	8	14	18	22	28	6	15	8	
	3	13	4	7	16	22	28	6	14	5	
34	1	5	22	17	26	15	9	13	30	26	
	2	11	21	16	17	14	9	9	26	22	
	3	17	15	8	7	14	8	8	24	21	
35	1	7	27	13	15	19	11	27	8	17	
	2	17	17	11	12	19	8	21	8	15	
	3	18	12	11	10	19	3	18	6	12	
36	1	15	22	9	21	18	25	10	28	26	
	2	16	20	8	17	16	22	7	19	25	
	3	25	18	4	4	15	21	5	17	25	
37	1	5	19	27	19	13	15	23	23	27	
	2	12	14	25	18	12	14	22	19	24	
	3	22	6	18	16	10	10	21	18	22	
38	1	3	17	23	20	16	16	14	28	21	
	2	17	9	16	19	11	15	12	26	20	
	3	26	7	11	18	6	15	10	26	19	
39	1	9	13	13	19	21	21	29	18	19	
	2	13	11	10	17	17	11	17	17	19	
	3	16	5	7	15	17	5	9	17	18	
40	1	8	9	25	20	11	28	27	23	15	
	2	15	5	21	10	11	19	16	11	15	
	3	25	4	21	4	9	12	10	3	15	
41	1	11	12	17	22	24	14	19	27	26	
	2	19	9	15	18	18	11	7	17	17	
	3	28	4	10	6	15	4	3	9	11	
42	1	1	28	22	11	25	29	8	14	14	
	2	20	28	20	10	22	26	7	14	10	
	3	21	26	17	7	17	22	6	13	6	
43	1	4	27	17	24	25	2	26	19	30	
	2	8	25	17	20	20	1	25	18	15	
	3	15	24	8	19	17	1	24	18	11	
44	1	15	20	8	20	18	21	11	26	9	
	2	18	19	7	14	10	16	9	18	9	
	3	29	14	7	2	9	14	5	17	8	
45	1	1	23	6	19	21	13	22	16	22	
	2	22	22	4	16	20	8	14	11	20	
	3	26	21	4	16	20	7	11	5	20	
46	1	8	15	22	28	26	17	15	10	5	
	2	9	15	18	27	24	10	12	10	5	
	3	19	14	8	25	22	9	10	10	5	
47	1	3	15	26	22	17	16	26	19	9	
	2	18	5	24	21	17	16	18	18	5	
	3	25	1	20	14	17	16	10	18	3	
48	1	3	15	27	23	25	24	22	27	29	
	2	13	10	25	15	19	17	14	21	26	
	3	15	8	21	10	2	15	8	17	25	
49	1	9	22	10	19	14	12	27	27	5	
	2	14	21	9	18	14	7	20	22	3	
	3	19	21	8	18	8	7	14	18	3	
50	1	5	15	18	26	8	26	24	24	11	
	2	26	9	17	15	7	23	22	23	9	
	3	29	6	9	13	7	22	19	21	4	
51	1	12	15	25	18	14	29	11	23	25	
	2	20	13	25	16	12	26	10	21	21	
	3	26	13	25	16	11	22	7	12	19	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	90	95	94	89	694	751	672	686

************************************************************************
