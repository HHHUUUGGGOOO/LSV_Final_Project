jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 5 6 10 13 
2	3	4		11 9 8 7 
3	3	4		18 15 9 7 
4	3	3		18 9 7 
5	3	3		20 12 8 
6	3	3		20 15 8 
7	3	6		29 21 20 17 16 14 
8	3	5		21 18 17 16 14 
9	3	4		29 21 17 16 
10	3	4		29 20 17 14 
11	3	3		17 16 15 
12	3	2		18 14 
13	3	5		25 23 21 20 19 
14	3	4		27 25 23 19 
15	3	4		27 25 21 19 
16	3	6		31 27 26 24 23 22 
17	3	2		25 19 
18	3	6		33 31 29 27 24 23 
19	3	4		31 26 24 22 
20	3	4		31 28 26 22 
21	3	5		38 33 32 30 28 
22	3	5		38 35 33 32 30 
23	3	5		43 38 35 32 30 
24	3	4		38 32 30 28 
25	3	4		38 32 30 28 
26	3	3		43 33 32 
27	3	2		38 30 
28	3	5		45 43 42 40 34 
29	3	2		40 32 
30	3	4		45 42 40 34 
31	3	4		45 43 42 34 
32	3	3		45 42 34 
33	3	7		51 49 45 42 41 40 39 
34	3	3		44 37 36 
35	3	6		51 49 45 44 42 41 
36	3	3		51 41 39 
37	3	4		49 48 47 46 
38	3	2		51 42 
39	3	3		48 47 46 
40	3	2		46 44 
41	3	2		48 46 
42	3	2		47 46 
43	3	2		47 46 
44	3	1		47 
45	3	1		46 
46	3	1		50 
47	3	1		50 
48	3	1		50 
49	3	1		50 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	1	11	21	17	24	24	11	28	5	
	2	28	9	17	17	16	20	6	21	5	
	3	30	4	10	17	9	18	3	15	1	
3	1	3	27	24	27	18	16	22	18	12	
	2	27	25	23	25	13	11	15	15	11	
	3	28	23	20	22	9	10	9	14	10	
4	1	3	23	13	21	27	28	30	15	26	
	2	13	20	13	12	27	26	17	10	22	
	3	20	19	12	12	27	24	13	5	20	
5	1	5	22	21	13	21	21	20	14	19	
	2	7	16	18	12	17	18	15	14	17	
	3	27	12	7	11	15	10	7	13	16	
6	1	16	25	25	17	9	20	26	26	24	
	2	24	16	13	16	8	17	20	18	24	
	3	26	11	10	15	6	16	18	11	17	
7	1	9	24	25	21	16	9	13	21	23	
	2	20	24	21	21	10	9	9	20	21	
	3	27	24	20	19	6	9	3	17	14	
8	1	10	22	10	26	9	15	21	18	20	
	2	12	21	4	20	7	10	19	13	14	
	3	16	18	3	19	6	9	16	7	11	
9	1	8	19	15	12	14	14	16	15	27	
	2	24	10	14	12	13	11	14	9	25	
	3	28	6	10	11	9	11	11	9	22	
10	1	12	22	26	27	11	4	22	6	25	
	2	24	22	15	25	7	3	19	5	13	
	3	27	18	9	24	2	1	17	5	8	
11	1	1	28	12	18	12	14	28	11	27	
	2	15	24	12	15	8	9	23	10	22	
	3	16	23	12	15	4	5	12	10	14	
12	1	4	30	11	20	7	24	20	25	27	
	2	20	15	11	20	4	24	17	24	18	
	3	26	12	6	20	3	24	16	21	16	
13	1	10	18	27	22	27	26	28	21	18	
	2	25	15	27	8	19	26	27	21	16	
	3	26	4	23	4	15	26	27	9	14	
14	1	1	23	29	11	4	18	23	18	19	
	2	23	20	27	9	4	16	18	12	16	
	3	28	13	27	6	4	13	7	7	12	
15	1	14	20	23	16	29	30	29	10	30	
	2	15	16	21	9	19	21	22	7	30	
	3	26	12	19	5	14	19	18	5	30	
16	1	2	9	25	23	29	26	15	21	25	
	2	6	9	21	18	29	21	12	17	24	
	3	10	5	9	13	28	18	12	13	23	
17	1	6	25	30	22	21	20	9	26	19	
	2	15	16	14	9	17	17	8	16	12	
	3	24	10	5	6	13	16	8	11	11	
18	1	3	24	13	5	25	16	29	20	16	
	2	4	15	13	2	19	12	16	17	16	
	3	26	9	10	1	13	10	14	16	16	
19	1	17	27	21	11	26	14	10	21	18	
	2	23	25	20	9	22	13	10	20	14	
	3	24	22	6	7	19	12	8	18	12	
20	1	4	22	6	30	9	20	19	22	24	
	2	18	18	5	26	6	18	15	21	17	
	3	29	14	3	26	3	12	13	20	11	
21	1	1	18	20	11	23	25	25	27	28	
	2	6	14	17	5	23	23	25	22	28	
	3	20	12	15	3	22	18	21	16	28	
22	1	21	24	23	21	26	19	18	28	27	
	2	22	20	15	21	14	18	18	21	26	
	3	23	16	3	14	5	18	18	21	25	
23	1	2	27	17	17	25	12	15	17	19	
	2	10	14	12	10	21	8	11	16	10	
	3	23	8	8	8	17	1	2	14	6	
24	1	17	18	11	20	8	2	23	24	15	
	2	23	11	6	9	7	2	18	22	14	
	3	26	3	4	5	5	2	15	11	8	
25	1	15	24	21	21	26	13	18	13	15	
	2	25	20	17	11	25	7	15	8	13	
	3	27	16	13	9	25	4	10	7	12	
26	1	16	20	16	14	24	20	21	22	16	
	2	19	15	13	11	20	15	16	21	15	
	3	29	12	12	6	15	9	9	13	4	
27	1	17	25	14	19	21	12	7	8	23	
	2	20	23	8	11	18	9	6	5	19	
	3	30	21	6	7	16	5	5	3	18	
28	1	7	17	7	20	21	27	14	18	25	
	2	11	10	4	12	10	19	14	14	16	
	3	12	5	4	10	6	8	6	14	15	
29	1	8	19	22	7	21	22	27	27	21	
	2	10	15	15	5	21	18	24	16	12	
	3	26	14	13	4	17	12	22	12	8	
30	1	6	16	21	8	10	20	18	15	15	
	2	10	15	19	4	7	18	17	15	13	
	3	17	9	15	3	5	15	16	7	12	
31	1	6	17	23	15	26	15	25	26	22	
	2	24	16	23	12	20	9	24	26	18	
	3	30	15	15	8	17	4	23	24	12	
32	1	4	12	24	21	26	21	19	23	27	
	2	5	8	23	21	18	15	14	20	23	
	3	26	6	23	21	14	13	8	18	19	
33	1	4	4	20	26	24	15	13	24	17	
	2	7	2	18	17	13	15	10	23	13	
	3	8	2	18	11	7	11	6	16	9	
34	1	9	7	20	5	20	19	6	11	16	
	2	10	7	14	4	20	19	4	6	11	
	3	24	7	3	4	19	19	3	6	5	
35	1	10	12	15	26	28	26	19	18	14	
	2	13	11	15	17	28	23	19	13	11	
	3	27	11	15	4	28	22	19	5	6	
36	1	3	8	21	10	21	15	10	28	4	
	2	4	4	19	8	14	12	9	26	4	
	3	7	3	8	3	8	9	2	26	4	
37	1	6	8	9	26	23	23	27	15	15	
	2	10	8	6	20	23	18	27	15	15	
	3	23	8	6	13	20	13	27	12	14	
38	1	7	23	11	21	20	21	22	24	14	
	2	8	22	8	17	13	21	21	20	10	
	3	30	22	6	14	7	20	10	17	9	
39	1	21	26	25	12	16	21	10	5	29	
	2	23	20	22	12	14	17	10	4	25	
	3	29	16	19	10	7	11	10	4	18	
40	1	5	11	29	28	25	17	24	22	13	
	2	11	8	28	28	23	10	19	21	12	
	3	24	7	28	27	18	8	12	20	9	
41	1	19	9	29	10	28	22	19	9	7	
	2	24	7	28	9	19	21	16	8	5	
	3	30	6	28	9	15	21	13	6	1	
42	1	7	15	16	28	9	26	21	10	11	
	2	15	13	15	28	8	15	16	8	9	
	3	19	11	12	26	8	10	13	6	9	
43	1	10	10	20	16	22	25	12	7	26	
	2	23	8	17	14	15	20	12	7	24	
	3	29	5	12	14	11	10	8	7	23	
44	1	7	25	26	9	19	22	22	22	13	
	2	17	17	24	4	13	15	21	13	9	
	3	25	10	24	4	5	13	15	10	1	
45	1	7	8	26	26	10	21	10	26	21	
	2	23	8	19	24	6	20	10	24	18	
	3	26	8	14	19	5	20	9	24	18	
46	1	10	15	21	20	13	10	8	29	25	
	2	11	14	13	17	11	9	4	29	24	
	3	18	12	12	14	8	8	2	27	19	
47	1	18	3	22	15	23	6	27	22	15	
	2	19	3	14	14	19	5	20	17	15	
	3	20	3	9	13	14	4	20	17	15	
48	1	20	20	17	14	23	10	14	19	22	
	2	22	18	13	14	18	8	7	14	20	
	3	27	15	12	14	13	2	4	8	14	
49	1	10	25	14	21	29	16	18	7	12	
	2	16	23	13	13	25	11	17	7	9	
	3	28	21	8	6	22	11	16	4	7	
50	1	3	30	14	8	13	6	23	19	24	
	2	9	28	9	6	7	4	19	11	21	
	3	16	28	7	3	4	2	17	8	15	
51	1	8	26	25	8	19	29	9	24	18	
	2	11	22	24	6	9	26	8	24	18	
	3	24	20	21	4	2	25	8	24	18	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	63	61	58	56	840	851	867	894

************************************************************************
