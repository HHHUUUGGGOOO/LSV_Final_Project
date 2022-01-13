jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	11		2 3 5 6 7 9 10 11 16 17 19 
2	9	4		21 14 8 4 
3	9	8		29 26 25 23 21 20 18 14 
4	9	6		36 29 27 26 24 12 
5	9	3		34 18 12 
6	9	7		36 35 27 26 25 23 14 
7	9	6		35 30 24 18 15 14 
8	9	4		51 33 20 13 
9	9	9		38 36 35 30 29 28 27 24 22 
10	9	5		34 28 25 20 15 
11	9	6		51 28 25 24 22 20 
12	9	5		28 25 23 22 20 
13	9	3		24 22 18 
14	9	5		42 34 33 28 22 
15	9	3		51 33 22 
16	9	8		51 50 39 38 37 34 32 31 
17	9	6		37 36 34 33 32 29 
18	9	6		50 42 38 37 36 27 
19	9	5		36 34 30 29 28 
20	9	6		42 41 38 37 35 30 
21	9	5		50 42 37 36 27 
22	9	6		50 49 39 37 32 31 
23	9	5		51 50 39 33 32 
24	9	7		50 49 45 42 40 37 34 
25	9	4		38 37 32 31 
26	9	4		51 49 43 30 
27	9	3		49 41 31 
28	9	6		49 47 46 45 43 40 
29	9	5		51 46 45 41 40 
30	9	1		31 
31	9	5		48 47 46 45 40 
32	9	5		48 47 45 44 41 
33	9	4		46 45 44 38 
34	9	4		48 46 44 41 
35	9	4		47 46 44 43 
36	9	3		45 44 43 
37	9	2		47 43 
38	9	2		49 43 
39	9	2		45 44 
40	9	1		44 
41	9	1		43 
42	9	1		43 
43	9	1		52 
44	9	1		52 
45	9	1		52 
46	9	1		52 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	3	5	4	3	4	9	22	
	2	10	4	4	3	3	8	21	
	3	13	4	4	3	3	8	20	
	4	14	4	4	3	3	7	16	
	5	15	3	4	3	3	6	14	
	6	16	3	3	3	3	5	13	
	7	17	2	3	3	3	4	12	
	8	18	2	3	3	3	4	10	
	9	20	2	3	3	3	3	7	
3	1	6	4	3	5	3	21	28	
	2	8	3	3	4	2	19	27	
	3	11	3	3	4	2	18	27	
	4	12	3	3	3	2	16	26	
	5	17	3	3	2	2	16	26	
	6	22	3	2	2	2	13	25	
	7	23	3	2	2	2	12	24	
	8	24	3	2	1	2	12	24	
	9	30	3	2	1	2	11	24	
4	1	2	4	5	4	4	28	19	
	2	3	4	5	4	4	26	19	
	3	6	4	5	4	4	24	19	
	4	11	3	5	4	4	24	19	
	5	18	3	5	3	4	23	19	
	6	19	3	5	3	4	21	19	
	7	20	2	5	3	4	20	19	
	8	27	2	5	3	4	19	19	
	9	28	2	5	3	4	17	19	
5	1	1	2	3	4	5	27	14	
	2	9	1	3	3	4	26	13	
	3	15	1	3	3	3	26	12	
	4	18	1	3	3	3	26	9	
	5	20	1	2	3	2	26	8	
	6	25	1	2	2	2	25	7	
	7	27	1	2	2	2	25	4	
	8	28	1	2	2	1	25	4	
	9	29	1	2	2	1	25	3	
6	1	1	1	4	4	4	29	28	
	2	2	1	3	3	4	24	27	
	3	3	1	3	3	4	23	27	
	4	4	1	3	3	4	22	27	
	5	5	1	2	3	4	17	26	
	6	7	1	2	3	4	14	25	
	7	8	1	1	3	4	14	24	
	8	22	1	1	3	4	9	24	
	9	30	1	1	3	4	7	23	
7	1	4	2	4	5	3	14	17	
	2	7	1	4	4	2	12	16	
	3	9	1	4	3	2	11	15	
	4	10	1	4	3	2	10	12	
	5	15	1	4	2	2	8	10	
	6	19	1	4	2	2	6	9	
	7	20	1	4	1	2	4	6	
	8	21	1	4	1	2	4	5	
	9	25	1	4	1	2	2	3	
8	1	2	4	1	4	1	17	7	
	2	8	4	1	3	1	16	7	
	3	14	4	1	3	1	16	6	
	4	15	4	1	3	1	14	6	
	5	16	4	1	3	1	13	6	
	6	26	4	1	3	1	12	7	
	7	27	4	1	3	1	12	6	
	8	29	4	1	3	1	11	5	
	9	30	4	1	3	1	10	5	
9	1	1	3	2	5	4	7	25	
	2	11	3	2	4	4	7	22	
	3	15	3	2	4	4	6	21	
	4	16	3	2	3	4	6	17	
	5	18	3	2	3	4	5	17	
	6	20	3	2	2	4	5	14	
	7	21	3	2	2	4	4	14	
	8	25	3	2	1	4	4	12	
	9	29	3	2	1	4	4	10	
10	1	2	2	1	1	3	19	26	
	2	4	2	1	1	2	17	24	
	3	6	2	1	1	2	17	23	
	4	17	2	1	1	2	15	24	
	5	19	2	1	1	2	15	23	
	6	20	2	1	1	1	14	23	
	7	21	2	1	1	1	13	22	
	8	24	2	1	1	1	11	21	
	9	26	2	1	1	1	11	20	
11	1	7	4	1	1	2	29	25	
	2	8	3	1	1	1	29	23	
	3	13	3	1	1	1	29	18	
	4	22	3	1	1	1	29	15	
	5	25	2	1	1	1	28	13	
	6	27	2	1	1	1	28	12	
	7	28	1	1	1	1	28	10	
	8	29	1	1	1	1	28	6	
	9	30	1	1	1	1	28	3	
12	1	5	5	3	5	3	18	25	
	2	6	4	2	4	3	14	24	
	3	7	4	2	3	3	14	20	
	4	9	4	2	3	3	11	19	
	5	12	4	1	3	2	10	14	
	6	14	3	1	2	2	8	11	
	7	15	3	1	1	2	7	10	
	8	19	3	1	1	1	5	6	
	9	20	3	1	1	1	3	3	
13	1	2	2	5	3	4	2	19	
	2	3	2	4	3	3	1	19	
	3	6	2	4	3	3	1	18	
	4	7	2	4	3	2	1	19	
	5	11	2	4	3	2	1	18	
	6	13	1	4	3	2	1	19	
	7	14	1	4	3	1	1	19	
	8	26	1	4	3	1	1	18	
	9	28	1	4	3	1	1	17	
14	1	2	4	3	4	4	17	13	
	2	8	3	3	4	3	16	12	
	3	12	3	3	4	3	16	11	
	4	16	3	3	4	3	15	11	
	5	17	2	3	4	3	15	10	
	6	22	2	3	4	3	15	9	
	7	24	2	3	4	3	14	10	
	8	27	2	3	4	3	14	9	
	9	28	2	3	4	3	13	8	
15	1	13	1	4	3	4	22	24	
	2	14	1	3	3	4	21	23	
	3	15	1	3	3	4	20	22	
	4	18	1	3	3	4	20	21	
	5	20	1	2	3	4	19	20	
	6	21	1	2	3	3	19	20	
	7	23	1	2	3	3	18	20	
	8	24	1	2	3	3	18	19	
	9	27	1	2	3	3	17	18	
16	1	5	4	4	3	2	26	21	
	2	7	4	4	2	2	25	19	
	3	8	4	4	2	2	23	18	
	4	15	3	4	2	2	20	17	
	5	16	3	3	2	1	19	17	
	6	19	3	3	2	1	17	16	
	7	23	3	3	2	1	15	15	
	8	24	2	3	2	1	15	13	
	9	26	2	3	2	1	13	13	
17	1	13	4	5	2	4	24	25	
	2	14	4	5	2	4	22	24	
	3	15	4	5	2	4	19	23	
	4	16	3	5	2	4	16	23	
	5	17	3	5	1	4	14	22	
	6	20	3	5	1	3	14	21	
	7	21	2	5	1	3	11	21	
	8	22	2	5	1	3	10	20	
	9	23	2	5	1	3	7	19	
18	1	4	4	2	4	4	30	15	
	2	10	4	1	4	4	29	13	
	3	11	4	1	4	4	28	13	
	4	14	4	1	4	4	26	12	
	5	20	4	1	3	4	26	9	
	6	21	4	1	3	4	25	8	
	7	26	4	1	3	4	25	7	
	8	27	4	1	3	4	23	7	
	9	29	4	1	3	4	23	6	
19	1	2	3	2	4	3	17	24	
	2	6	3	2	4	3	17	23	
	3	7	3	2	4	3	17	22	
	4	17	3	2	4	3	17	21	
	5	18	3	2	3	3	16	18	
	6	22	3	2	3	3	16	17	
	7	25	3	2	3	3	15	15	
	8	26	3	2	2	3	15	14	
	9	27	3	2	2	3	15	13	
20	1	1	3	5	1	1	24	6	
	2	3	3	4	1	1	22	6	
	3	8	3	4	1	1	22	5	
	4	11	3	4	1	1	21	5	
	5	12	3	4	1	1	18	5	
	6	21	2	3	1	1	17	4	
	7	22	2	3	1	1	16	4	
	8	24	2	3	1	1	16	3	
	9	29	2	3	1	1	15	3	
21	1	1	3	5	2	3	20	29	
	2	2	3	4	2	2	18	29	
	3	3	3	4	2	2	17	29	
	4	4	3	4	2	2	16	29	
	5	6	3	3	2	2	14	29	
	6	12	3	3	2	2	14	28	
	7	14	3	3	2	2	13	28	
	8	19	3	3	2	2	10	28	
	9	22	3	3	2	2	9	28	
22	1	6	4	4	5	3	22	28	
	2	9	3	3	4	2	19	25	
	3	13	3	3	4	2	17	23	
	4	18	3	3	4	2	16	22	
	5	19	3	3	4	1	13	18	
	6	21	2	3	4	1	13	17	
	7	24	2	3	4	1	10	16	
	8	26	2	3	4	1	8	14	
	9	27	2	3	4	1	8	11	
23	1	4	4	4	2	4	26	19	
	2	5	4	4	1	4	26	18	
	3	8	4	4	1	4	24	16	
	4	10	4	3	1	3	23	12	
	5	11	4	3	1	3	22	10	
	6	12	3	3	1	3	21	8	
	7	22	3	2	1	3	20	6	
	8	28	3	2	1	2	20	6	
	9	29	3	2	1	2	19	3	
24	1	1	4	4	4	4	15	30	
	2	8	4	4	4	4	14	29	
	3	9	4	4	4	4	12	29	
	4	11	4	4	4	4	12	28	
	5	14	4	4	3	4	10	27	
	6	15	4	4	3	4	9	27	
	7	17	4	4	3	4	8	27	
	8	25	4	4	3	4	7	26	
	9	30	4	4	3	4	7	25	
25	1	8	4	4	5	2	12	26	
	2	16	3	4	4	2	10	26	
	3	17	3	4	4	2	9	22	
	4	18	3	4	3	2	8	18	
	5	19	3	4	3	2	7	17	
	6	20	2	3	2	2	7	13	
	7	22	2	3	2	2	6	11	
	8	26	2	3	1	2	4	6	
	9	28	2	3	1	2	4	4	
26	1	2	2	3	5	5	22	17	
	2	3	1	3	5	4	19	15	
	3	6	1	3	5	4	16	13	
	4	18	1	3	5	4	16	11	
	5	19	1	2	5	4	14	11	
	6	24	1	2	5	3	13	8	
	7	25	1	2	5	3	9	7	
	8	29	1	1	5	3	9	5	
	9	30	1	1	5	3	6	4	
27	1	2	2	4	2	5	22	3	
	2	4	2	4	2	4	22	3	
	3	7	2	4	2	4	20	3	
	4	8	2	4	2	4	20	2	
	5	9	2	4	2	4	19	3	
	6	16	2	4	2	4	18	2	
	7	19	2	4	2	4	18	1	
	8	20	2	4	2	4	17	2	
	9	22	2	4	2	4	16	2	
28	1	10	4	4	4	3	13	24	
	2	11	4	4	4	3	13	21	
	3	12	3	4	4	3	12	17	
	4	14	3	4	4	3	10	15	
	5	18	3	4	4	3	9	11	
	6	21	2	4	4	3	9	10	
	7	24	1	4	4	3	8	6	
	8	28	1	4	4	3	7	4	
	9	29	1	4	4	3	6	1	
29	1	1	5	3	2	2	14	13	
	2	5	4	2	2	2	13	12	
	3	6	3	2	2	2	12	11	
	4	11	3	2	2	2	12	10	
	5	14	2	2	1	2	12	9	
	6	22	2	2	1	2	11	8	
	7	24	2	2	1	2	11	7	
	8	28	1	2	1	2	10	6	
	9	30	1	2	1	2	10	5	
30	1	3	4	2	4	3	28	10	
	2	9	4	2	4	2	24	10	
	3	12	4	2	4	2	22	10	
	4	14	4	2	4	2	21	10	
	5	15	4	2	4	1	20	10	
	6	18	4	2	4	1	16	9	
	7	21	4	2	4	1	15	9	
	8	24	4	2	4	1	14	9	
	9	27	4	2	4	1	11	9	
31	1	1	5	2	2	4	25	24	
	2	8	4	2	2	3	23	22	
	3	10	4	2	2	3	19	20	
	4	14	4	2	2	3	19	17	
	5	15	4	2	2	3	15	14	
	6	19	4	2	2	2	13	11	
	7	20	4	2	2	2	10	7	
	8	24	4	2	2	2	9	5	
	9	25	4	2	2	2	5	2	
32	1	8	1	5	5	5	28	24	
	2	9	1	4	5	4	27	24	
	3	14	1	4	5	4	27	23	
	4	20	1	4	5	4	26	24	
	5	21	1	4	5	3	26	24	
	6	22	1	4	5	3	25	24	
	7	23	1	4	5	3	25	23	
	8	23	1	4	5	3	24	24	
	9	24	1	4	5	3	24	23	
33	1	2	3	3	5	4	24	27	
	2	8	2	3	4	4	22	26	
	3	14	2	3	4	4	22	25	
	4	16	2	3	3	3	22	22	
	5	17	1	3	3	2	21	22	
	6	18	1	3	2	2	20	19	
	7	19	1	3	1	2	20	18	
	8	26	1	3	1	1	19	15	
	9	30	1	3	1	1	19	14	
34	1	3	2	4	4	4	24	23	
	2	15	1	3	4	4	22	19	
	3	16	1	3	4	4	20	17	
	4	19	1	3	3	4	18	17	
	5	20	1	3	3	4	14	15	
	6	21	1	3	3	4	14	14	
	7	24	1	3	3	4	11	11	
	8	25	1	3	2	4	9	10	
	9	29	1	3	2	4	8	8	
35	1	1	5	4	5	4	16	17	
	2	3	4	4	4	3	16	15	
	3	10	4	4	4	3	15	14	
	4	11	4	3	4	2	13	14	
	5	16	4	2	3	2	12	13	
	6	19	3	2	3	2	11	11	
	7	20	3	2	3	1	8	10	
	8	26	3	1	2	1	7	10	
	9	28	3	1	2	1	7	9	
36	1	3	3	4	4	4	26	6	
	2	7	3	3	4	4	24	6	
	3	9	3	3	4	4	22	6	
	4	11	3	2	4	4	20	6	
	5	12	3	2	4	4	16	5	
	6	17	3	2	3	4	15	5	
	7	26	3	1	3	4	10	5	
	8	27	3	1	3	4	10	4	
	9	29	3	1	3	4	7	5	
37	1	2	3	1	4	1	12	19	
	2	6	3	1	4	1	10	18	
	3	9	3	1	4	1	10	17	
	4	17	3	1	4	1	9	18	
	5	21	3	1	4	1	7	18	
	6	26	3	1	4	1	6	18	
	7	28	3	1	4	1	5	18	
	8	29	3	1	4	1	4	18	
	9	30	3	1	4	1	3	18	
38	1	2	2	5	1	4	20	29	
	2	3	1	4	1	3	19	29	
	3	9	1	4	1	3	19	28	
	4	10	1	4	1	3	19	27	
	5	17	1	4	1	3	18	28	
	6	19	1	3	1	3	18	28	
	7	27	1	3	1	3	18	27	
	8	28	1	3	1	3	18	26	
	9	29	1	3	1	3	18	25	
39	1	1	4	4	3	5	13	7	
	2	9	4	4	3	4	11	7	
	3	11	4	4	3	4	10	7	
	4	12	4	4	2	4	10	7	
	5	15	4	4	2	3	8	7	
	6	16	3	4	2	3	7	7	
	7	17	3	4	2	2	6	7	
	8	20	3	4	1	2	5	7	
	9	22	3	4	1	2	4	7	
40	1	7	4	5	4	4	12	21	
	2	14	3	4	4	4	11	20	
	3	17	3	4	4	3	9	18	
	4	18	3	4	4	3	9	17	
	5	22	3	4	4	3	8	17	
	6	27	3	3	4	2	6	15	
	7	28	3	3	4	2	3	14	
	8	29	3	3	4	1	3	14	
	9	30	3	3	4	1	2	12	
41	1	5	5	2	4	2	28	21	
	2	8	4	2	4	1	23	21	
	3	9	3	2	4	1	23	21	
	4	11	3	2	4	1	20	21	
	5	12	2	2	3	1	17	21	
	6	14	2	1	3	1	16	21	
	7	16	2	1	3	1	11	21	
	8	21	1	1	2	1	11	21	
	9	25	1	1	2	1	8	21	
42	1	3	3	5	5	4	18	7	
	2	6	3	4	4	4	17	6	
	3	14	3	4	4	4	17	5	
	4	17	3	4	3	4	16	5	
	5	20	3	4	3	4	15	5	
	6	26	3	4	3	3	15	5	
	7	27	3	4	2	3	15	5	
	8	28	3	4	2	3	14	5	
	9	29	3	4	2	3	14	4	
43	1	2	4	4	3	4	20	5	
	2	2	4	4	3	3	18	6	
	3	3	4	4	3	3	18	5	
	4	4	4	4	3	3	17	5	
	5	6	4	4	3	3	17	4	
	6	13	4	4	3	2	16	4	
	7	25	4	4	3	2	16	3	
	8	26	4	4	3	2	16	2	
	9	28	4	4	3	2	15	4	
44	1	6	4	3	1	1	23	21	
	2	7	4	3	1	1	20	21	
	3	15	4	3	1	1	17	19	
	4	16	4	3	1	1	15	18	
	5	17	4	2	1	1	13	17	
	6	19	3	2	1	1	9	16	
	7	23	3	2	1	1	9	15	
	8	26	3	2	1	1	4	15	
	9	30	3	2	1	1	4	14	
45	1	2	3	5	4	4	7	24	
	2	3	2	5	4	3	6	24	
	3	14	2	5	4	3	6	21	
	4	15	2	5	4	2	6	18	
	5	16	1	5	4	2	5	18	
	6	17	1	5	4	2	5	17	
	7	19	1	5	4	2	5	14	
	8	25	1	5	4	1	5	13	
	9	28	1	5	4	1	5	10	
46	1	3	1	5	4	5	22	26	
	2	6	1	4	4	4	20	25	
	3	9	1	4	4	4	20	24	
	4	10	1	3	3	3	18	24	
	5	18	1	2	3	3	18	23	
	6	19	1	2	2	2	16	23	
	7	21	1	1	1	1	16	22	
	8	23	1	1	1	1	15	22	
	9	26	1	1	1	1	13	21	
47	1	2	5	4	4	3	25	7	
	2	5	4	4	3	2	23	6	
	3	6	3	4	3	2	22	6	
	4	11	3	4	3	2	21	6	
	5	12	2	4	2	1	18	5	
	6	18	2	3	2	1	18	5	
	7	22	2	3	1	1	16	5	
	8	23	1	3	1	1	15	5	
	9	29	1	3	1	1	14	5	
48	1	3	2	5	4	4	12	21	
	2	5	2	4	4	4	12	20	
	3	7	2	4	4	4	10	20	
	4	11	2	4	3	4	10	19	
	5	25	2	3	3	4	8	19	
	6	26	2	3	3	3	6	18	
	7	27	2	3	2	3	6	18	
	8	28	2	3	2	3	3	17	
	9	30	2	3	2	3	3	16	
49	1	2	2	4	5	1	27	27	
	2	8	1	4	4	1	26	25	
	3	11	1	4	4	1	25	22	
	4	12	1	4	4	1	25	17	
	5	15	1	4	4	1	24	16	
	6	17	1	4	3	1	24	14	
	7	20	1	4	3	1	23	10	
	8	28	1	4	3	1	23	7	
	9	30	1	4	3	1	23	6	
50	1	3	5	4	4	4	15	11	
	2	8	5	4	3	3	12	10	
	3	11	5	4	3	3	12	9	
	4	16	5	4	3	3	11	8	
	5	18	5	4	3	2	10	8	
	6	19	5	4	2	2	9	6	
	7	20	5	4	2	2	7	5	
	8	25	5	4	2	1	6	5	
	9	28	5	4	2	1	6	4	
51	1	3	4	4	3	2	19	29	
	2	6	3	4	2	2	18	26	
	3	8	3	4	2	2	17	25	
	4	18	3	4	2	2	16	25	
	5	20	3	4	2	2	15	24	
	6	21	2	4	2	1	14	22	
	7	24	2	4	2	1	12	22	
	8	28	2	4	2	1	11	20	
	9	29	2	4	2	1	11	19	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	26	28	29	29	876	875

************************************************************************
