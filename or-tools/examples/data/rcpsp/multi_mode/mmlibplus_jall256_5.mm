jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 7 8 10 14 18 
2	9	5		26 17 16 12 9 
3	9	6		26 25 21 17 15 12 
4	9	5		30 24 15 12 11 
5	9	5		21 17 15 13 12 
6	9	6		30 25 24 22 21 12 
7	9	6		29 25 24 21 20 16 
8	9	11		51 48 32 30 29 28 27 25 24 22 21 
9	9	4		30 21 19 15 
10	9	4		32 25 19 15 
11	9	7		51 32 26 25 23 21 20 
12	9	5		34 32 31 20 19 
13	9	12		51 50 49 34 33 32 31 30 29 28 27 20 
14	9	8		51 33 32 30 28 23 21 20 
15	9	10		51 50 49 48 46 34 33 28 23 22 
16	9	10		51 50 48 34 33 32 30 28 27 22 
17	9	9		48 47 32 31 30 29 28 24 23 
18	9	10		51 50 48 47 36 33 32 31 30 27 
19	9	9		51 50 49 48 47 46 33 29 23 
20	9	11		48 47 46 45 44 43 42 40 39 37 35 
21	9	8		50 47 45 44 40 36 35 31 
22	9	7		47 45 44 40 38 36 31 
23	9	4		45 43 36 27 
24	9	8		49 46 45 42 40 39 38 37 
25	9	7		49 44 43 42 41 38 33 
26	9	3		49 41 28 
27	9	5		44 42 40 39 35 
28	9	5		43 42 40 39 35 
29	9	4		41 40 39 35 
30	9	4		46 45 43 38 
31	9	3		43 42 39 
32	9	3		46 44 38 
33	9	2		40 39 
34	9	2		41 38 
35	9	1		38 
36	9	1		41 
37	9	1		41 
38	9	1		52 
39	9	1		52 
40	9	1		52 
41	9	1		52 
42	9	1		52 
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
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	5	4	3	19	5	25	21	
	2	6	3	3	18	4	22	21	
	3	16	3	3	16	4	22	21	
	4	18	3	3	15	3	19	20	
	5	19	3	3	14	2	16	20	
	6	26	2	3	14	2	15	20	
	7	27	2	3	13	2	13	20	
	8	28	2	3	12	1	9	19	
	9	30	2	3	10	1	8	19	
3	1	1	3	5	14	29	30	19	
	2	2	3	4	13	28	29	19	
	3	4	3	4	13	27	28	19	
	4	14	3	4	12	25	28	19	
	5	16	3	4	11	24	28	18	
	6	24	3	4	11	21	27	18	
	7	27	3	4	11	20	26	18	
	8	28	3	4	10	19	26	18	
	9	29	3	4	10	17	26	18	
4	1	8	3	2	8	5	27	27	
	2	9	3	2	8	4	27	27	
	3	11	3	2	8	4	24	27	
	4	12	3	2	8	3	24	27	
	5	13	2	1	8	3	22	26	
	6	14	2	1	7	3	19	26	
	7	20	2	1	7	3	17	26	
	8	23	2	1	7	2	17	26	
	9	28	2	1	7	2	14	26	
5	1	13	4	4	27	27	17	14	
	2	14	3	3	25	21	16	13	
	3	15	3	3	25	19	16	13	
	4	16	3	3	24	17	16	13	
	5	17	3	2	23	16	15	12	
	6	20	3	2	21	11	15	12	
	7	21	3	2	21	11	14	11	
	8	22	3	1	19	7	14	11	
	9	24	3	1	19	6	14	11	
6	1	1	4	5	25	30	26	10	
	2	6	4	5	22	25	24	10	
	3	8	4	5	20	21	23	10	
	4	12	4	5	18	18	22	10	
	5	13	3	5	17	16	22	10	
	6	21	3	5	16	13	19	10	
	7	22	2	5	13	11	18	10	
	8	25	2	5	10	8	17	10	
	9	29	2	5	9	6	16	10	
7	1	7	5	4	7	26	27	11	
	2	8	4	3	7	23	25	11	
	3	10	4	3	7	20	25	11	
	4	11	3	3	7	20	23	11	
	5	12	3	3	7	17	23	11	
	6	15	3	3	6	15	21	11	
	7	18	3	3	6	13	21	11	
	8	28	2	3	6	10	20	11	
	9	29	2	3	6	8	19	11	
8	1	1	3	4	16	26	20	24	
	2	2	2	3	13	24	18	20	
	3	9	2	3	12	23	18	20	
	4	10	2	3	9	22	16	18	
	5	18	2	3	8	19	16	17	
	6	21	2	2	8	18	15	16	
	7	22	2	2	6	18	13	13	
	8	25	2	2	2	16	12	11	
	9	26	2	2	1	15	12	11	
9	1	4	4	5	14	25	28	22	
	2	5	4	4	14	24	26	19	
	3	6	4	4	14	24	25	18	
	4	8	4	4	13	23	21	15	
	5	9	4	3	13	23	20	15	
	6	11	4	3	12	22	18	13	
	7	12	4	2	12	22	16	11	
	8	14	4	2	11	21	14	10	
	9	24	4	2	11	21	12	9	
10	1	1	4	5	30	27	11	25	
	2	3	4	4	29	24	11	22	
	3	4	4	4	28	24	9	22	
	4	9	3	3	27	23	9	20	
	5	10	3	2	27	21	8	19	
	6	19	3	2	26	19	7	17	
	7	22	2	2	25	17	5	15	
	8	28	2	1	24	16	5	13	
	9	30	2	1	24	14	4	13	
11	1	2	4	4	19	28	30	21	
	2	5	4	4	19	23	23	20	
	3	8	3	4	17	21	21	20	
	4	9	3	4	16	20	18	19	
	5	15	3	4	15	16	15	18	
	6	21	2	4	15	14	13	18	
	7	22	2	4	14	11	9	18	
	8	25	1	4	12	6	6	17	
	9	29	1	4	12	4	3	17	
12	1	1	2	3	16	7	19	10	
	2	3	1	2	14	6	18	8	
	3	4	1	2	13	6	18	8	
	4	5	1	2	11	6	16	6	
	5	8	1	2	10	6	15	5	
	6	15	1	1	8	6	13	5	
	7	22	1	1	8	6	11	4	
	8	23	1	1	7	6	9	3	
	9	26	1	1	5	6	8	2	
13	1	7	4	3	25	9	9	28	
	2	10	4	3	24	8	8	28	
	3	16	4	3	24	7	8	26	
	4	18	4	3	23	7	7	24	
	5	19	4	2	23	5	7	21	
	6	20	4	2	22	5	6	21	
	7	21	4	2	22	3	6	18	
	8	22	4	2	21	3	6	18	
	9	26	4	2	21	2	5	16	
14	1	1	3	4	14	26	11	30	
	2	2	2	3	14	22	10	29	
	3	4	2	3	13	17	9	29	
	4	7	2	3	13	14	7	29	
	5	8	2	2	12	12	6	29	
	6	9	2	2	12	9	5	29	
	7	10	2	1	11	9	4	29	
	8	18	2	1	11	6	3	29	
	9	23	2	1	10	2	3	29	
15	1	3	5	2	13	21	19	26	
	2	6	4	2	12	19	18	26	
	3	7	4	2	12	18	18	26	
	4	10	3	2	11	17	17	25	
	5	16	2	2	11	14	17	25	
	6	20	2	2	11	13	17	24	
	7	22	1	2	11	13	17	23	
	8	25	1	2	10	10	16	23	
	9	26	1	2	10	9	16	23	
16	1	11	2	1	20	6	28	26	
	2	12	2	1	17	5	27	22	
	3	13	2	1	14	5	26	20	
	4	16	2	1	12	5	24	17	
	5	21	1	1	10	4	22	16	
	6	23	1	1	8	4	22	13	
	7	24	1	1	6	4	19	10	
	8	29	1	1	4	4	19	10	
	9	30	1	1	4	4	18	7	
17	1	9	4	3	22	10	8	10	
	2	15	4	3	21	10	8	10	
	3	16	4	3	20	8	7	9	
	4	17	4	3	20	8	6	7	
	5	22	3	3	19	7	6	6	
	6	24	3	3	18	6	6	6	
	7	26	3	3	18	4	5	5	
	8	27	3	3	17	3	5	4	
	9	29	3	3	16	2	4	2	
18	1	4	4	2	10	24	9	24	
	2	8	4	2	10	21	8	22	
	3	9	4	2	9	21	8	20	
	4	10	4	2	8	19	8	18	
	5	13	4	1	8	16	7	16	
	6	16	4	1	7	13	7	15	
	7	20	4	1	7	10	6	14	
	8	26	4	1	7	6	6	12	
	9	29	4	1	6	5	6	9	
19	1	5	2	4	21	28	29	29	
	2	10	1	4	20	26	27	26	
	3	11	1	4	18	24	23	21	
	4	12	1	3	18	22	21	19	
	5	13	1	3	16	21	20	18	
	6	14	1	3	15	19	19	13	
	7	15	1	2	14	16	16	12	
	8	26	1	2	13	14	13	10	
	9	29	1	2	13	13	13	8	
20	1	4	2	2	30	27	25	21	
	2	5	2	2	28	26	23	19	
	3	7	2	2	28	22	20	19	
	4	17	2	2	28	20	19	18	
	5	21	2	2	27	20	16	16	
	6	22	1	2	26	15	13	15	
	7	24	1	2	25	13	9	15	
	8	27	1	2	24	10	7	13	
	9	28	1	2	24	8	6	12	
21	1	3	4	2	8	27	18	26	
	2	6	4	2	8	27	18	25	
	3	8	4	2	8	24	16	22	
	4	10	4	2	8	22	16	19	
	5	17	3	2	8	18	14	16	
	6	19	3	1	7	16	14	14	
	7	24	2	1	7	12	13	13	
	8	27	2	1	7	10	12	11	
	9	29	2	1	7	8	10	6	
22	1	4	4	4	27	28	22	22	
	2	5	3	4	26	22	21	20	
	3	8	3	4	25	21	21	19	
	4	12	3	4	24	18	20	19	
	5	17	2	4	22	16	20	18	
	6	18	2	4	22	12	19	16	
	7	23	1	4	21	10	19	16	
	8	25	1	4	19	10	18	14	
	9	30	1	4	19	6	18	14	
23	1	5	4	4	27	20	28	29	
	2	8	3	4	24	19	28	28	
	3	9	3	4	22	19	27	26	
	4	12	2	4	18	19	26	26	
	5	13	2	3	17	18	24	24	
	6	14	2	3	13	18	23	23	
	7	15	2	3	11	17	23	22	
	8	25	1	2	6	17	22	21	
	9	28	1	2	4	17	21	21	
24	1	2	3	4	7	25	29	15	
	2	4	3	4	7	25	29	12	
	3	5	3	4	7	22	28	11	
	4	13	3	4	7	21	27	11	
	5	15	3	4	7	19	27	9	
	6	16	2	4	7	19	26	9	
	7	21	2	4	7	16	26	7	
	8	22	2	4	7	16	26	6	
	9	28	2	4	7	14	25	6	
25	1	8	4	4	17	23	19	28	
	2	9	4	4	16	22	19	26	
	3	11	4	4	14	19	16	26	
	4	19	4	4	13	17	16	25	
	5	20	4	3	13	16	12	24	
	6	25	4	3	11	14	12	23	
	7	26	4	3	10	13	10	21	
	8	27	4	3	10	10	7	21	
	9	28	4	3	9	9	7	19	
26	1	2	5	5	24	13	21	12	
	2	4	4	4	21	13	20	12	
	3	7	4	3	20	12	18	12	
	4	11	4	3	18	11	18	12	
	5	15	4	3	17	10	17	12	
	6	19	4	2	15	8	16	11	
	7	20	4	1	14	7	15	11	
	8	21	4	1	11	5	15	11	
	9	27	4	1	10	5	14	11	
27	1	7	4	4	6	20	12	19	
	2	8	4	4	6	19	11	18	
	3	10	3	4	5	19	11	18	
	4	13	3	4	5	19	10	18	
	5	16	3	4	4	19	9	17	
	6	19	2	4	4	19	8	17	
	7	20	2	4	3	19	7	16	
	8	21	1	4	2	19	5	16	
	9	22	1	4	2	19	4	16	
28	1	8	4	2	24	27	26	25	
	2	9	4	2	23	26	26	24	
	3	10	4	2	20	25	24	24	
	4	11	4	2	18	24	24	24	
	5	19	4	2	17	23	21	23	
	6	21	4	1	15	21	20	23	
	7	22	4	1	12	21	20	23	
	8	26	4	1	11	19	19	22	
	9	28	4	1	9	19	18	22	
29	1	4	2	3	6	28	17	20	
	2	9	2	2	6	23	16	19	
	3	11	2	2	5	20	13	19	
	4	15	2	2	5	19	12	18	
	5	16	2	2	5	17	12	18	
	6	17	2	2	4	12	9	17	
	7	24	2	2	3	10	8	17	
	8	28	2	2	3	7	7	16	
	9	29	2	2	3	5	5	16	
30	1	2	3	2	14	20	5	17	
	2	3	3	2	13	19	4	15	
	3	5	3	2	13	16	4	13	
	4	6	3	2	10	13	4	13	
	5	9	3	1	10	13	3	11	
	6	15	3	1	8	11	3	10	
	7	23	3	1	6	10	3	8	
	8	24	3	1	6	7	3	7	
	9	27	3	1	4	6	3	5	
31	1	4	5	1	30	14	12	16	
	2	5	4	1	30	13	12	15	
	3	7	4	1	30	12	12	14	
	4	8	4	1	30	10	12	13	
	5	9	3	1	30	8	11	12	
	6	12	3	1	30	8	11	10	
	7	25	3	1	30	6	11	9	
	8	26	2	1	30	4	10	7	
	9	30	2	1	30	4	10	6	
32	1	1	5	3	17	16	18	14	
	2	4	4	3	17	16	18	14	
	3	11	4	3	15	16	17	12	
	4	14	4	3	12	16	17	10	
	5	15	3	2	10	16	15	8	
	6	16	3	2	9	16	15	6	
	7	21	2	2	9	16	14	6	
	8	22	2	2	5	16	13	4	
	9	23	2	2	4	16	13	3	
33	1	11	5	5	26	25	7	25	
	2	14	4	4	23	22	6	24	
	3	15	4	3	22	21	5	24	
	4	16	3	3	22	19	5	24	
	5	17	3	3	21	17	5	23	
	6	18	3	2	19	17	4	23	
	7	20	3	2	19	14	3	23	
	8	22	2	1	18	14	3	23	
	9	23	2	1	16	13	3	23	
34	1	4	1	2	30	2	28	25	
	2	8	1	2	28	2	28	25	
	3	12	1	2	26	2	28	24	
	4	13	1	2	25	2	28	23	
	5	14	1	2	23	2	28	23	
	6	23	1	1	22	2	28	23	
	7	24	1	1	20	2	28	22	
	8	28	1	1	18	2	28	21	
	9	30	1	1	18	2	28	20	
35	1	2	3	4	17	26	24	21	
	2	4	3	4	16	22	21	19	
	3	5	3	3	16	21	16	18	
	4	7	3	3	16	19	16	18	
	5	9	3	2	16	14	12	15	
	6	10	3	2	16	14	10	15	
	7	17	3	2	16	9	6	13	
	8	23	3	1	16	7	4	11	
	9	28	3	1	16	4	1	10	
36	1	6	4	2	3	17	12	17	
	2	14	3	2	3	15	12	17	
	3	17	3	2	3	14	12	17	
	4	20	3	2	3	11	12	17	
	5	21	2	2	2	11	12	16	
	6	22	2	2	2	10	11	16	
	7	23	2	2	2	8	11	16	
	8	25	2	2	1	6	11	16	
	9	28	2	2	1	6	11	15	
37	1	1	4	5	19	23	15	26	
	2	3	3	5	18	22	15	25	
	3	7	3	5	18	22	14	25	
	4	13	3	5	16	22	14	24	
	5	15	3	5	16	22	14	23	
	6	19	3	5	14	21	13	23	
	7	21	3	5	13	21	13	23	
	8	23	3	5	13	21	12	23	
	9	28	3	5	11	21	12	22	
38	1	9	4	2	18	5	22	23	
	2	13	4	2	16	4	22	23	
	3	17	3	2	16	4	22	23	
	4	18	3	2	16	3	22	22	
	5	20	2	1	15	3	22	22	
	6	21	2	1	14	2	22	22	
	7	25	2	1	14	2	22	21	
	8	28	1	1	13	2	22	21	
	9	30	1	1	13	1	22	21	
39	1	5	4	1	13	24	26	22	
	2	6	4	1	12	21	22	19	
	3	12	4	1	10	21	20	18	
	4	13	4	1	9	17	17	15	
	5	14	3	1	8	15	15	13	
	6	20	3	1	7	13	10	9	
	7	22	3	1	6	11	9	5	
	8	26	2	1	5	10	7	5	
	9	29	2	1	5	9	2	2	
40	1	13	1	5	20	24	22	9	
	2	15	1	4	19	23	21	9	
	3	16	1	4	17	23	20	9	
	4	17	1	3	17	22	18	8	
	5	18	1	2	16	21	16	7	
	6	19	1	2	15	21	11	7	
	7	23	1	1	13	20	10	7	
	8	28	1	1	12	20	9	6	
	9	29	1	1	12	20	5	6	
41	1	1	2	2	17	19	22	28	
	2	2	2	2	16	18	20	23	
	3	3	2	2	15	16	18	23	
	4	8	2	2	14	14	16	18	
	5	12	2	2	12	11	13	16	
	6	16	2	1	11	9	12	16	
	7	18	2	1	11	7	10	12	
	8	21	2	1	9	7	8	8	
	9	23	2	1	8	5	6	8	
42	1	1	4	3	29	25	18	19	
	2	2	3	2	24	23	18	18	
	3	3	3	2	22	18	16	17	
	4	4	2	2	17	17	14	15	
	5	10	2	2	13	12	12	14	
	6	11	2	2	11	9	10	14	
	7	17	1	2	10	9	10	11	
	8	28	1	2	4	6	7	11	
	9	30	1	2	3	3	6	9	
43	1	5	3	5	22	19	27	27	
	2	9	3	4	21	19	27	27	
	3	11	3	4	20	19	27	26	
	4	12	3	4	20	19	26	24	
	5	20	3	4	18	19	26	24	
	6	21	3	4	18	19	26	22	
	7	22	3	4	18	19	26	21	
	8	23	3	4	17	19	25	20	
	9	26	3	4	16	19	25	20	
44	1	6	2	4	4	29	23	27	
	2	12	2	4	4	24	23	27	
	3	13	2	4	4	21	23	25	
	4	14	2	3	4	20	23	23	
	5	15	2	3	4	17	23	21	
	6	20	2	2	3	14	23	18	
	7	21	2	1	3	12	23	16	
	8	22	2	1	3	9	23	13	
	9	28	2	1	3	5	23	12	
45	1	5	4	5	14	20	21	30	
	2	6	4	4	12	17	21	28	
	3	10	4	4	11	17	21	28	
	4	11	4	4	11	15	21	26	
	5	17	3	3	9	15	21	26	
	6	18	3	3	9	13	21	26	
	7	23	2	2	7	12	21	24	
	8	27	2	2	6	10	21	23	
	9	29	2	2	6	10	21	22	
46	1	1	5	3	22	19	25	25	
	2	2	4	3	19	18	24	24	
	3	3	4	3	18	18	21	23	
	4	4	4	3	17	17	20	23	
	5	5	4	3	14	17	18	22	
	6	11	3	3	13	16	16	22	
	7	12	3	3	13	16	16	21	
	8	24	3	3	11	15	12	21	
	9	28	3	3	9	15	11	21	
47	1	1	3	1	25	11	28	7	
	2	3	3	1	24	11	25	6	
	3	4	3	1	23	11	24	6	
	4	5	3	1	22	10	22	6	
	5	6	2	1	22	10	21	6	
	6	15	2	1	21	10	18	6	
	7	16	2	1	19	10	18	6	
	8	18	2	1	19	9	16	6	
	9	23	2	1	17	9	14	6	
48	1	1	3	5	30	14	21	23	
	2	2	3	5	26	13	20	23	
	3	8	3	5	24	12	16	22	
	4	10	3	5	20	12	15	22	
	5	11	3	5	19	12	14	21	
	6	16	2	5	14	11	13	20	
	7	18	2	5	12	11	10	19	
	8	19	2	5	9	10	7	18	
	9	27	2	5	7	10	6	18	
49	1	3	3	3	25	15	21	25	
	2	8	2	3	24	13	19	25	
	3	9	2	3	24	12	19	24	
	4	20	2	3	24	9	18	23	
	5	23	2	3	24	9	16	23	
	6	24	1	3	24	6	15	22	
	7	25	1	3	24	5	15	21	
	8	28	1	3	24	3	14	21	
	9	29	1	3	24	2	12	20	
50	1	2	3	1	20	8	26	29	
	2	3	3	1	18	8	22	27	
	3	7	3	1	18	8	20	25	
	4	9	3	1	16	8	20	25	
	5	13	3	1	16	7	18	24	
	6	19	3	1	15	7	16	21	
	7	20	3	1	15	7	14	21	
	8	23	3	1	13	7	10	19	
	9	25	3	1	13	7	8	18	
51	1	5	2	5	16	30	25	7	
	2	7	2	4	15	29	23	7	
	3	12	2	4	15	29	23	6	
	4	13	2	3	14	28	21	7	
	5	15	2	3	13	28	18	7	
	6	16	2	3	12	28	17	7	
	7	18	2	2	11	28	15	7	
	8	20	2	2	9	27	14	7	
	9	21	2	2	9	27	13	7	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	22	21	631	596	697	774

************************************************************************
