jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 6 7 8 10 
2	3	4		23 12 9 5 
3	3	8		23 19 18 15 14 13 12 11 
4	3	10		25 22 20 19 18 16 15 13 12 11 
5	3	8		32 24 20 19 17 16 15 14 
6	3	7		32 25 22 20 18 15 11 
7	3	5		32 25 20 19 9 
8	3	10		39 33 32 27 25 22 21 19 18 17 
9	3	7		51 39 33 28 18 17 16 
10	3	10		39 34 33 32 31 29 28 26 24 21 
11	3	10		38 37 36 34 33 31 28 27 26 24 
12	3	7		51 39 33 30 28 27 17 
13	3	11		51 39 38 37 36 34 33 32 30 28 27 
14	3	7		39 36 33 28 25 22 21 
15	3	7		49 42 37 34 31 29 26 
16	3	6		36 34 31 30 29 27 
17	3	7		49 41 37 36 35 34 29 
18	3	7		50 47 45 38 36 34 30 
19	3	10		51 50 49 47 45 42 41 40 37 34 
20	3	5		47 46 39 36 30 
21	3	10		50 49 48 47 45 44 42 41 40 38 
22	3	9		51 50 49 48 47 45 40 38 37 
23	3	9		51 50 47 46 45 42 41 40 34 
24	3	5		47 45 42 35 30 
25	3	5		49 48 42 41 31 
26	3	7		51 48 47 45 41 40 35 
27	3	7		50 47 46 45 44 41 40 
28	3	6		49 47 46 44 41 40 
29	3	6		48 47 46 45 44 43 
30	3	5		49 48 44 41 40 
31	3	5		47 46 45 44 40 
32	3	4		48 46 45 44 
33	3	3		44 41 40 
34	3	3		48 44 43 
35	3	3		50 44 43 
36	3	2		44 42 
37	3	2		46 44 
38	3	2		46 43 
39	3	2		49 45 
40	3	1		43 
41	3	1		43 
42	3	1		43 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	3	15	15	24	5	21	21	
	2	4	11	15	23	4	16	19	
	3	11	11	15	23	2	16	19	
3	1	2	14	19	26	14	22	18	
	2	3	13	18	14	11	17	18	
	3	30	13	16	6	9	14	18	
4	1	4	18	20	18	22	26	21	
	2	22	18	16	9	17	24	16	
	3	29	15	2	8	15	19	8	
5	1	6	27	17	16	9	11	15	
	2	19	25	14	12	7	10	10	
	3	21	22	4	9	6	3	7	
6	1	1	14	7	11	28	26	18	
	2	12	13	5	4	25	20	10	
	3	13	13	1	2	20	18	5	
7	1	4	5	10	23	23	23	20	
	2	20	4	7	16	17	19	14	
	3	21	4	5	5	3	2	6	
8	1	9	13	12	24	20	9	26	
	2	13	10	11	11	14	3	20	
	3	14	6	4	3	6	2	10	
9	1	1	25	28	30	27	29	26	
	2	17	18	16	30	26	22	26	
	3	23	8	8	30	26	17	26	
10	1	7	12	5	13	25	25	10	
	2	8	10	4	12	24	17	4	
	3	16	4	4	10	23	11	1	
11	1	7	27	20	30	29	13	30	
	2	8	23	17	28	23	10	29	
	3	24	23	9	27	14	8	29	
12	1	2	17	16	12	28	12	20	
	2	4	13	13	10	27	11	13	
	3	25	7	3	10	27	10	13	
13	1	15	22	30	25	18	26	8	
	2	22	17	30	24	13	19	7	
	3	28	5	30	19	11	11	5	
14	1	6	27	19	19	21	4	6	
	2	14	24	18	14	8	3	5	
	3	25	16	18	11	3	3	5	
15	1	14	22	24	16	15	17	9	
	2	20	15	19	10	13	13	8	
	3	25	9	17	5	10	3	7	
16	1	15	22	19	19	27	12	17	
	2	24	11	18	19	27	9	16	
	3	25	5	13	15	27	5	13	
17	1	20	29	10	21	12	12	26	
	2	21	11	7	10	12	10	22	
	3	30	7	6	7	8	6	16	
18	1	2	28	19	20	7	9	14	
	2	3	20	17	18	6	5	14	
	3	6	14	15	15	6	5	13	
19	1	4	16	25	15	18	21	30	
	2	5	12	25	15	18	15	14	
	3	14	9	25	7	17	9	10	
20	1	1	28	29	15	14	10	24	
	2	14	25	29	14	10	10	20	
	3	22	15	29	14	9	10	13	
21	1	18	22	28	19	24	14	16	
	2	24	11	26	14	22	11	15	
	3	29	4	25	5	21	8	12	
22	1	13	16	25	7	12	28	24	
	2	14	13	21	5	12	24	21	
	3	25	11	11	5	12	24	19	
23	1	18	9	14	5	25	14	20	
	2	24	7	9	3	11	9	12	
	3	27	4	5	2	3	7	6	
24	1	4	10	8	12	23	17	18	
	2	11	10	6	8	20	15	15	
	3	30	8	3	2	18	13	6	
25	1	17	25	24	28	12	15	26	
	2	18	20	24	28	12	13	22	
	3	22	15	21	28	11	11	22	
26	1	4	20	9	23	4	20	18	
	2	21	19	8	17	3	18	14	
	3	26	18	7	15	2	5	9	
27	1	8	6	22	12	24	14	15	
	2	11	3	20	12	21	14	12	
	3	15	1	18	12	17	14	12	
28	1	13	26	12	10	26	26	14	
	2	24	16	9	7	21	25	11	
	3	27	8	3	2	16	23	10	
29	1	7	15	14	25	23	21	22	
	2	9	12	14	23	21	18	12	
	3	12	9	13	13	17	15	9	
30	1	10	7	22	26	25	8	7	
	2	13	4	20	23	24	8	4	
	3	14	3	18	21	21	4	4	
31	1	4	23	23	21	15	16	13	
	2	11	21	23	21	15	12	13	
	3	13	19	22	21	14	8	13	
32	1	5	16	22	22	5	11	15	
	2	17	13	21	21	5	10	10	
	3	21	7	12	19	4	10	8	
33	1	3	24	15	16	15	8	22	
	2	6	24	12	12	13	4	22	
	3	23	16	10	12	12	2	22	
34	1	1	10	22	23	16	10	27	
	2	5	9	21	12	14	7	22	
	3	18	9	20	8	13	4	20	
35	1	18	13	15	17	11	23	21	
	2	23	13	15	11	8	20	20	
	3	24	10	13	8	7	18	18	
36	1	6	24	15	9	24	9	24	
	2	17	16	15	9	18	8	22	
	3	19	7	14	8	15	6	11	
37	1	7	24	20	12	23	20	25	
	2	17	18	20	10	13	16	25	
	3	27	9	20	9	7	14	22	
38	1	4	17	17	29	24	19	27	
	2	6	16	16	29	20	19	25	
	3	24	15	15	29	11	15	23	
39	1	8	24	18	20	27	21	26	
	2	18	16	14	17	27	16	23	
	3	24	6	9	13	27	15	20	
40	1	5	13	25	14	22	16	29	
	2	8	13	21	12	12	14	19	
	3	25	11	15	12	7	13	7	
41	1	7	23	20	10	22	24	13	
	2	10	14	19	5	14	24	8	
	3	23	7	17	1	8	24	2	
42	1	2	20	5	21	19	16	27	
	2	5	19	5	20	14	16	18	
	3	10	8	3	11	10	14	10	
43	1	12	3	9	16	15	18	11	
	2	26	2	8	14	15	14	10	
	3	30	2	8	6	15	11	9	
44	1	14	27	6	13	26	10	16	
	2	21	27	5	10	18	6	10	
	3	25	23	4	4	12	4	8	
45	1	2	28	28	24	22	27	30	
	2	6	25	15	20	15	25	30	
	3	20	18	7	17	6	23	30	
46	1	5	7	16	6	19	21	28	
	2	21	6	14	4	19	16	28	
	3	30	6	11	3	19	13	27	
47	1	3	10	6	12	24	18	23	
	2	6	7	5	12	18	8	23	
	3	11	5	2	11	12	4	22	
48	1	2	4	10	11	4	22	15	
	2	29	4	9	8	4	10	13	
	3	30	4	7	5	4	3	8	
49	1	12	13	27	27	29	23	20	
	2	21	9	26	25	22	19	19	
	3	23	9	23	21	20	17	19	
50	1	1	11	20	23	22	5	7	
	2	11	11	14	18	22	4	7	
	3	28	8	10	17	15	4	7	
51	1	5	30	26	6	7	26	12	
	2	8	23	21	6	7	24	10	
	3	15	14	17	4	4	24	5	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	81	77	69	75	786	888

************************************************************************
