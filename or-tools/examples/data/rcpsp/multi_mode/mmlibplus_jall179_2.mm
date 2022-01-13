jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 8 13 15 
2	6	5		31 12 11 10 7 
3	6	7		33 29 27 21 20 18 9 
4	6	7		31 28 26 20 18 17 11 
5	6	6		31 29 26 21 18 11 
6	6	6		27 26 22 21 16 14 
7	6	11		40 37 33 27 26 24 23 21 20 19 18 
8	6	9		40 31 27 26 25 22 21 20 16 
9	6	7		41 32 31 30 26 16 14 
10	6	7		33 29 27 24 21 18 14 
11	6	8		41 40 33 32 27 25 23 16 
12	6	5		41 32 30 29 14 
13	6	6		40 37 36 35 30 21 
14	6	6		47 40 34 28 25 23 
15	6	4		41 37 32 20 
16	6	5		50 37 34 24 19 
17	6	4		37 36 32 27 
18	6	5		50 47 41 34 25 
19	6	6		49 47 39 38 36 35 
20	6	6		50 49 47 38 36 35 
21	6	4		49 38 34 32 
22	6	4		41 39 35 30 
23	6	7		51 50 49 45 44 39 38 
24	6	6		49 47 45 39 38 35 
25	6	4		49 38 36 35 
26	6	4		51 50 38 34 
27	6	2		35 30 
28	6	5		49 48 45 38 35 
29	6	4		51 44 38 36 
30	6	6		50 47 45 44 42 38 
31	6	6		48 47 46 45 44 42 
32	6	4		51 47 44 39 
33	6	3		46 43 36 
34	6	3		45 44 39 
35	6	3		44 43 42 
36	6	3		48 45 42 
37	6	3		47 44 42 
38	6	2		46 43 
39	6	2		43 42 
40	6	2		44 43 
41	6	1		45 
42	6	1		52 
43	6	1		52 
44	6	1		52 
45	6	1		52 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	7	3	5	1	2	30	21	
	2	8	2	4	1	2	20	21	
	3	10	2	4	1	2	17	21	
	4	12	2	3	1	2	13	21	
	5	14	2	3	1	2	6	21	
	6	27	2	2	1	2	4	21	
3	1	7	4	5	5	2	15	17	
	2	8	4	4	5	2	14	16	
	3	16	4	4	5	2	13	15	
	4	18	4	3	5	1	13	12	
	5	21	4	3	5	1	13	8	
	6	22	4	3	5	1	12	6	
4	1	7	3	4	5	4	29	21	
	2	8	3	4	4	4	28	19	
	3	11	3	4	4	4	27	16	
	4	17	3	4	3	4	27	15	
	5	18	3	4	2	4	26	14	
	6	20	3	4	2	4	25	12	
5	1	1	2	4	3	4	19	18	
	2	3	2	3	3	3	16	17	
	3	11	2	3	2	3	14	16	
	4	17	2	2	2	3	13	15	
	5	23	2	2	2	2	6	14	
	6	27	2	1	1	2	4	14	
6	1	6	3	5	3	4	24	15	
	2	11	2	4	3	3	19	15	
	3	12	2	4	3	3	17	12	
	4	15	2	4	3	2	14	10	
	5	27	2	4	3	1	10	8	
	6	28	2	4	3	1	9	8	
7	1	3	1	4	4	5	24	21	
	2	4	1	4	4	4	22	20	
	3	5	1	3	4	4	19	20	
	4	12	1	3	4	4	15	20	
	5	28	1	3	4	4	13	20	
	6	29	1	2	4	4	12	20	
8	1	5	5	1	5	4	28	28	
	2	9	4	1	4	3	27	24	
	3	17	3	1	4	3	23	22	
	4	21	3	1	4	3	21	22	
	5	25	3	1	4	2	20	20	
	6	26	2	1	4	2	19	18	
9	1	4	4	3	4	4	13	20	
	2	5	4	3	4	4	12	20	
	3	17	4	3	4	4	12	19	
	4	24	3	3	3	4	11	19	
	5	25	3	3	3	3	10	19	
	6	26	3	3	2	3	10	18	
10	1	13	4	5	3	3	20	20	
	2	18	4	4	3	3	20	20	
	3	22	3	4	3	3	18	19	
	4	24	3	3	3	3	15	17	
	5	27	3	3	3	2	13	16	
	6	30	2	3	3	2	12	14	
11	1	4	3	4	4	3	5	12	
	2	5	3	4	3	3	4	12	
	3	6	3	4	2	3	4	9	
	4	18	3	4	2	2	3	6	
	5	21	3	4	1	2	2	3	
	6	23	3	4	1	2	2	2	
12	1	9	5	5	4	5	16	22	
	2	15	4	3	4	4	12	22	
	3	16	4	3	4	4	9	21	
	4	17	4	2	3	3	7	19	
	5	18	4	2	3	3	6	18	
	6	28	4	1	3	3	3	18	
13	1	2	2	4	4	3	28	12	
	2	3	2	4	4	3	24	11	
	3	15	2	4	4	2	23	10	
	4	23	2	4	4	2	20	10	
	5	27	2	4	4	1	19	9	
	6	30	2	4	4	1	16	9	
14	1	5	3	4	4	5	19	28	
	2	10	3	3	3	4	15	23	
	3	11	3	3	3	4	12	23	
	4	18	3	2	2	4	9	21	
	5	23	3	1	1	4	4	19	
	6	28	3	1	1	4	1	15	
15	1	7	4	5	3	4	19	4	
	2	16	3	5	3	4	18	4	
	3	18	3	5	3	4	15	4	
	4	23	2	5	3	3	14	4	
	5	28	1	5	3	2	13	4	
	6	30	1	5	3	2	10	4	
16	1	8	3	5	5	4	26	24	
	2	9	2	5	4	4	24	24	
	3	15	2	5	3	3	19	23	
	4	21	2	5	3	3	16	23	
	5	24	2	5	3	2	13	21	
	6	25	2	5	2	1	11	21	
17	1	5	2	4	5	3	29	22	
	2	7	2	4	5	3	24	22	
	3	11	2	4	5	3	15	20	
	4	12	2	4	5	3	11	18	
	5	17	2	4	5	3	9	16	
	6	19	2	4	5	3	1	14	
18	1	1	2	3	3	5	24	8	
	2	12	2	3	3	5	24	7	
	3	13	2	3	2	5	20	7	
	4	14	2	2	2	5	17	6	
	5	27	2	2	2	5	17	5	
	6	30	2	1	1	5	14	6	
19	1	8	2	4	2	4	26	17	
	2	17	1	4	2	3	26	16	
	3	21	1	4	2	3	23	15	
	4	22	1	4	1	2	21	15	
	5	24	1	4	1	1	19	15	
	6	30	1	4	1	1	17	14	
20	1	5	1	3	3	4	22	30	
	2	6	1	3	3	3	21	27	
	3	18	1	3	3	3	20	25	
	4	19	1	3	2	3	20	25	
	5	27	1	3	2	3	18	22	
	6	30	1	3	2	3	18	21	
21	1	8	4	4	2	5	19	14	
	2	16	3	3	1	4	15	13	
	3	21	3	3	1	4	15	12	
	4	22	3	3	1	4	14	12	
	5	23	3	3	1	4	10	11	
	6	27	3	3	1	4	10	10	
22	1	3	2	4	3	2	7	21	
	2	8	2	4	3	1	7	20	
	3	22	2	3	3	1	7	18	
	4	23	1	3	3	1	7	17	
	5	24	1	2	3	1	7	17	
	6	25	1	2	3	1	7	16	
23	1	9	4	4	4	4	23	25	
	2	17	3	3	4	4	22	20	
	3	18	3	2	3	4	18	17	
	4	19	3	2	2	4	15	16	
	5	22	3	1	2	4	7	12	
	6	30	3	1	1	4	4	11	
24	1	1	5	2	5	4	26	24	
	2	5	4	2	4	4	23	24	
	3	8	4	2	3	3	14	20	
	4	10	3	2	3	2	14	19	
	5	14	3	2	2	2	10	17	
	6	15	3	2	2	1	2	13	
25	1	4	3	2	3	4	6	19	
	2	12	3	2	3	4	5	18	
	3	14	3	2	3	3	5	18	
	4	21	3	2	3	3	4	16	
	5	26	2	2	2	2	3	16	
	6	29	2	2	2	1	3	14	
26	1	5	3	3	2	1	26	28	
	2	8	3	2	1	1	23	24	
	3	13	3	2	1	1	23	21	
	4	14	3	2	1	1	18	15	
	5	21	3	1	1	1	17	9	
	6	28	3	1	1	1	14	8	
27	1	2	5	3	5	3	7	6	
	2	9	4	2	5	3	6	6	
	3	10	4	2	5	3	6	5	
	4	17	3	2	5	3	5	4	
	5	29	2	1	5	3	3	4	
	6	30	2	1	5	3	1	4	
28	1	1	4	1	1	3	24	27	
	2	7	3	1	1	3	20	24	
	3	10	3	1	1	3	16	20	
	4	11	3	1	1	3	15	15	
	5	12	2	1	1	3	10	9	
	6	29	2	1	1	3	10	5	
29	1	3	2	3	3	3	28	30	
	2	4	2	3	2	3	27	23	
	3	9	2	3	2	3	25	17	
	4	23	1	3	2	3	25	15	
	5	24	1	3	2	3	24	11	
	6	28	1	3	2	3	22	5	
30	1	1	3	2	5	4	4	24	
	2	10	3	2	5	3	4	22	
	3	14	3	2	5	2	4	18	
	4	18	3	1	5	2	4	15	
	5	28	3	1	5	1	4	11	
	6	29	3	1	5	1	4	5	
31	1	12	4	5	4	5	28	29	
	2	15	4	3	4	5	27	22	
	3	18	4	3	3	5	27	22	
	4	21	4	3	3	5	26	16	
	5	23	4	1	2	5	26	14	
	6	29	4	1	2	5	25	8	
32	1	5	3	3	4	3	18	9	
	2	7	3	3	4	2	17	6	
	3	8	3	3	4	2	16	6	
	4	16	3	3	3	1	16	4	
	5	25	3	3	2	1	14	4	
	6	26	3	3	2	1	14	2	
33	1	1	4	2	3	3	8	24	
	2	13	4	2	3	2	6	20	
	3	14	3	2	3	2	6	16	
	4	16	3	2	3	2	6	11	
	5	21	3	2	2	2	4	5	
	6	23	2	2	2	2	4	1	
34	1	8	4	1	3	5	2	19	
	2	13	4	1	3	4	2	19	
	3	14	4	1	3	4	2	15	
	4	19	4	1	3	3	1	13	
	5	20	4	1	2	2	1	13	
	6	27	4	1	2	2	1	9	
35	1	6	2	1	4	4	27	23	
	2	8	2	1	4	3	25	23	
	3	13	2	1	4	3	25	22	
	4	16	2	1	4	2	23	23	
	5	18	2	1	4	2	22	22	
	6	19	2	1	4	2	20	22	
36	1	1	5	4	4	4	12	16	
	2	7	4	3	3	4	11	16	
	3	15	3	3	3	4	8	16	
	4	25	3	2	3	4	6	16	
	5	28	1	2	2	3	5	15	
	6	30	1	2	2	3	1	15	
37	1	11	4	5	4	4	9	16	
	2	14	4	4	3	4	8	15	
	3	15	3	4	3	4	8	14	
	4	18	3	4	2	3	7	11	
	5	21	3	3	2	3	6	10	
	6	25	2	3	1	2	6	10	
38	1	2	3	4	5	5	19	16	
	2	3	2	4	4	4	18	14	
	3	11	2	3	3	4	18	13	
	4	14	2	3	3	4	18	12	
	5	20	1	1	3	3	16	9	
	6	21	1	1	2	3	16	9	
39	1	3	3	4	4	4	24	22	
	2	5	3	3	4	4	19	21	
	3	12	3	3	4	3	17	18	
	4	15	3	3	4	2	13	17	
	5	22	2	3	4	1	9	15	
	6	24	2	3	4	1	4	13	
40	1	2	2	3	5	4	27	11	
	2	7	2	2	4	4	24	10	
	3	9	2	2	4	3	24	10	
	4	13	2	2	4	2	21	10	
	5	14	2	2	4	1	21	10	
	6	30	2	2	4	1	20	10	
41	1	1	4	2	5	2	24	13	
	2	7	4	1	3	1	24	12	
	3	11	4	1	3	1	20	12	
	4	17	3	1	2	1	20	11	
	5	22	3	1	2	1	18	9	
	6	23	2	1	1	1	15	9	
42	1	7	1	2	4	4	22	11	
	2	11	1	2	4	3	21	10	
	3	21	1	2	4	3	20	8	
	4	25	1	2	4	2	19	8	
	5	28	1	2	3	1	17	7	
	6	29	1	2	3	1	17	6	
43	1	1	5	2	5	5	20	25	
	2	5	4	2	4	5	19	20	
	3	9	4	2	4	5	17	16	
	4	15	4	2	4	5	17	14	
	5	17	3	2	3	5	15	10	
	6	18	3	2	3	5	13	6	
44	1	10	1	5	4	1	25	13	
	2	13	1	4	3	1	23	12	
	3	14	1	4	3	1	19	12	
	4	17	1	4	3	1	16	11	
	5	25	1	3	3	1	14	11	
	6	28	1	3	3	1	10	11	
45	1	3	4	5	3	5	29	26	
	2	10	4	4	3	4	27	24	
	3	11	4	4	3	3	24	22	
	4	14	4	3	2	3	23	17	
	5	23	3	3	2	1	23	17	
	6	30	3	3	1	1	21	13	
46	1	3	4	4	5	3	20	13	
	2	15	3	3	5	3	18	10	
	3	22	3	3	5	3	18	9	
	4	23	3	2	5	3	17	9	
	5	27	3	2	5	2	14	7	
	6	30	3	1	5	2	13	6	
47	1	1	2	5	4	2	25	26	
	2	6	2	4	4	1	25	24	
	3	14	2	4	4	1	20	22	
	4	18	2	3	4	1	20	19	
	5	26	2	3	4	1	15	18	
	6	28	2	3	4	1	13	15	
48	1	1	4	4	4	5	30	25	
	2	3	3	4	3	4	23	25	
	3	4	2	3	3	3	23	23	
	4	5	2	3	2	3	16	19	
	5	12	1	2	2	2	16	17	
	6	22	1	2	1	1	11	13	
49	1	13	3	3	1	3	5	18	
	2	14	2	3	1	3	5	16	
	3	15	2	3	1	3	5	13	
	4	17	2	3	1	2	5	11	
	5	24	1	2	1	2	5	10	
	6	26	1	2	1	2	5	6	
50	1	5	5	3	3	4	17	4	
	2	12	5	2	3	4	16	3	
	3	15	5	2	3	4	15	3	
	4	16	5	2	3	3	15	3	
	5	23	5	1	3	3	14	3	
	6	24	5	1	3	3	13	3	
51	1	7	4	4	3	3	26	29	
	2	8	4	4	3	3	24	28	
	3	9	4	3	3	3	22	28	
	4	13	4	3	3	2	20	26	
	5	19	4	1	3	2	16	26	
	6	23	4	1	3	1	14	25	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	27	27	27	32	768	763

************************************************************************
