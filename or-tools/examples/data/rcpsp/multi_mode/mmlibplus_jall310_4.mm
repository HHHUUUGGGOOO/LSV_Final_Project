jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 9 10 11 13 16 
2	9	7		31 29 28 17 14 12 8 
3	9	5		21 19 17 8 7 
4	9	9		36 31 28 27 25 23 18 17 14 
5	9	7		36 31 27 23 20 19 14 
6	9	4		31 28 20 8 
7	9	9		51 36 32 29 28 26 25 24 22 
8	9	4		32 22 18 15 
9	9	8		51 36 31 29 28 25 24 22 
10	9	8		51 36 35 26 25 23 22 20 
11	9	8		51 36 35 33 29 26 22 21 
12	9	6		51 35 32 24 22 21 
13	9	7		40 39 36 33 28 26 21 
14	9	5		51 35 32 22 21 
15	9	8		49 40 39 36 35 33 27 24 
16	9	6		51 49 38 36 33 20 
17	9	4		35 33 26 20 
18	9	7		51 40 39 35 33 30 26 
19	9	4		39 33 28 24 
20	9	6		50 47 40 39 34 30 
21	9	6		50 49 47 45 34 30 
22	9	9		49 48 47 43 42 40 39 38 37 
23	9	7		50 49 48 47 46 40 34 
24	9	5		50 47 45 38 30 
25	9	5		50 45 39 34 33 
26	9	6		49 47 46 45 38 34 
27	9	5		47 46 45 44 34 
28	9	4		49 38 35 34 
29	9	6		47 45 43 42 39 37 
30	9	6		48 46 44 43 42 37 
31	9	5		47 45 42 38 37 
32	9	2		43 33 
33	9	4		48 46 42 37 
34	9	3		43 42 37 
35	9	2		42 41 
36	9	2		42 41 
37	9	1		41 
38	9	1		44 
39	9	1		44 
40	9	1		45 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	7	5	5	1	4	21	25	24	17	
	2	8	4	4	1	4	21	25	22	16	
	3	10	4	4	1	4	21	25	22	14	
	4	12	3	4	1	4	20	24	20	14	
	5	16	3	4	1	4	19	24	18	13	
	6	17	2	4	1	4	19	23	17	11	
	7	18	1	4	1	4	18	22	16	11	
	8	20	1	4	1	4	18	22	15	10	
	9	22	1	4	1	4	18	22	13	9	
3	1	12	5	2	2	3	22	10	27	21	
	2	13	4	2	2	3	21	10	26	21	
	3	15	4	2	2	3	21	9	24	21	
	4	16	4	2	2	3	19	9	22	20	
	5	17	3	1	2	3	19	7	20	19	
	6	22	3	1	2	3	19	7	18	19	
	7	24	2	1	2	3	17	6	15	18	
	8	25	2	1	2	3	16	5	13	18	
	9	30	2	1	2	3	16	5	12	18	
4	1	1	3	5	4	5	11	11	30	25	
	2	7	3	4	3	4	11	10	29	25	
	3	12	3	4	3	3	10	10	27	25	
	4	14	3	4	3	3	8	10	27	25	
	5	18	2	4	3	3	7	9	25	25	
	6	23	2	4	2	2	7	9	24	25	
	7	24	2	4	2	1	5	9	23	25	
	8	25	2	4	2	1	5	9	22	25	
	9	28	2	4	2	1	3	9	21	25	
5	1	3	5	2	1	2	22	15	19	11	
	2	4	4	2	1	2	20	14	19	10	
	3	17	3	2	1	2	19	13	19	10	
	4	18	3	2	1	2	18	11	19	9	
	5	19	3	2	1	2	15	10	18	8	
	6	20	2	2	1	2	15	9	18	8	
	7	21	2	2	1	2	13	9	18	8	
	8	24	1	2	1	2	11	7	18	7	
	9	25	1	2	1	2	10	5	18	7	
6	1	1	3	3	2	5	11	30	28	25	
	2	3	3	3	2	5	11	29	27	23	
	3	5	3	3	2	5	11	27	25	22	
	4	10	3	3	2	5	11	26	23	21	
	5	18	3	3	2	5	11	26	20	19	
	6	24	3	3	1	5	11	26	20	17	
	7	26	3	3	1	5	11	24	18	17	
	8	27	3	3	1	5	11	23	16	16	
	9	28	3	3	1	5	11	23	12	15	
7	1	10	3	2	3	4	9	24	19	26	
	2	11	2	2	3	3	9	22	19	24	
	3	16	2	2	3	3	9	20	19	24	
	4	17	2	2	3	3	9	20	19	22	
	5	20	2	2	3	3	9	17	19	20	
	6	21	2	2	2	3	9	16	18	18	
	7	22	2	2	2	3	9	16	18	14	
	8	23	2	2	2	3	9	14	18	14	
	9	30	2	2	2	3	9	12	18	12	
8	1	1	3	2	3	2	23	17	21	18	
	2	6	3	2	2	1	23	16	20	18	
	3	7	3	2	2	1	22	16	20	14	
	4	10	3	2	2	1	19	16	19	13	
	5	18	3	2	2	1	18	16	18	12	
	6	19	3	2	2	1	18	16	18	8	
	7	20	3	2	2	1	17	16	17	8	
	8	21	3	2	2	1	14	16	17	6	
	9	27	3	2	2	1	14	16	17	3	
9	1	3	4	3	4	4	18	18	16	16	
	2	9	3	3	4	4	17	15	16	14	
	3	13	3	3	4	4	17	12	15	14	
	4	14	3	3	4	4	16	11	12	13	
	5	21	3	3	4	4	15	10	11	11	
	6	24	2	3	4	4	15	7	10	10	
	7	25	2	3	4	4	14	6	8	9	
	8	26	2	3	4	4	14	3	7	9	
	9	27	2	3	4	4	14	2	7	8	
10	1	17	2	4	3	3	27	23	9	26	
	2	18	2	4	2	3	26	23	9	24	
	3	19	2	4	2	3	23	21	9	23	
	4	20	2	4	2	3	21	17	9	20	
	5	21	2	4	2	3	21	16	9	18	
	6	23	2	4	2	3	18	14	8	18	
	7	24	2	4	2	3	17	12	8	14	
	8	28	2	4	2	3	13	10	8	13	
	9	29	2	4	2	3	12	8	8	11	
11	1	2	1	3	3	2	22	16	30	23	
	2	9	1	2	3	2	17	16	27	23	
	3	16	1	2	3	2	17	16	25	19	
	4	22	1	2	2	2	15	16	23	19	
	5	26	1	1	2	2	10	15	21	17	
	6	27	1	1	2	2	8	15	19	15	
	7	28	1	1	1	2	5	15	17	12	
	8	29	1	1	1	2	5	15	15	11	
	9	30	1	1	1	2	1	15	14	10	
12	1	2	5	3	5	4	27	25	18	13	
	2	3	4	3	4	3	27	22	18	11	
	3	4	4	3	4	3	27	18	17	10	
	4	11	4	3	4	3	26	17	15	10	
	5	12	4	3	4	3	26	15	14	9	
	6	13	4	3	4	2	26	12	13	8	
	7	23	4	3	4	2	25	10	12	8	
	8	27	4	3	4	2	25	8	11	6	
	9	30	4	3	4	2	25	5	11	6	
13	1	1	3	3	5	3	6	25	21	26	
	2	7	3	3	4	3	6	24	21	25	
	3	8	3	3	4	3	5	22	20	25	
	4	12	3	3	4	2	5	18	20	25	
	5	13	3	3	4	2	4	18	19	24	
	6	18	3	3	4	2	3	16	19	24	
	7	21	3	3	4	1	2	12	18	24	
	8	28	3	3	4	1	2	10	18	24	
	9	29	3	3	4	1	1	9	18	24	
14	1	7	4	4	5	2	30	29	17	24	
	2	8	4	4	4	2	27	29	15	23	
	3	10	4	4	4	2	24	27	14	23	
	4	13	4	3	4	2	21	27	13	23	
	5	16	4	2	4	2	19	25	12	23	
	6	17	4	2	4	2	18	24	10	23	
	7	18	4	2	4	2	15	23	10	23	
	8	19	4	1	4	2	15	23	8	23	
	9	30	4	1	4	2	12	22	8	23	
15	1	4	4	4	4	3	23	10	22	19	
	2	5	3	3	3	3	22	10	21	18	
	3	7	3	3	3	3	22	10	18	16	
	4	8	3	3	3	3	22	10	15	15	
	5	9	2	2	2	3	21	10	13	14	
	6	10	2	2	2	3	21	10	12	12	
	7	16	2	1	1	3	21	10	10	11	
	8	28	1	1	1	3	21	10	9	11	
	9	29	1	1	1	3	21	10	6	10	
16	1	3	1	4	2	1	21	18	28	11	
	2	5	1	3	2	1	18	17	26	10	
	3	7	1	3	2	1	18	17	25	9	
	4	11	1	3	2	1	16	16	23	7	
	5	16	1	3	2	1	13	16	21	7	
	6	17	1	3	2	1	13	15	21	5	
	7	21	1	3	2	1	10	15	19	5	
	8	22	1	3	2	1	9	15	19	3	
	9	24	1	3	2	1	9	14	18	3	
17	1	3	3	3	3	1	18	10	20	21	
	2	4	2	3	3	1	18	10	17	21	
	3	6	2	3	3	1	18	9	14	21	
	4	7	2	3	3	1	17	8	13	21	
	5	8	2	2	3	1	17	6	11	21	
	6	22	1	2	2	1	17	5	10	21	
	7	26	1	2	2	1	17	4	7	21	
	8	29	1	2	2	1	16	3	4	21	
	9	30	1	2	2	1	16	2	3	21	
18	1	8	4	2	3	4	29	18	17	15	
	2	19	3	2	2	4	28	15	16	14	
	3	21	3	2	2	4	28	14	16	14	
	4	22	2	2	2	4	28	14	16	13	
	5	23	2	2	1	4	27	13	15	13	
	6	24	2	2	1	4	26	12	15	13	
	7	25	2	2	1	4	26	10	15	13	
	8	26	1	2	1	4	25	10	14	12	
	9	27	1	2	1	4	25	8	14	12	
19	1	4	5	3	4	4	22	9	20	25	
	2	5	4	3	4	4	21	8	20	22	
	3	6	4	3	4	4	18	8	20	21	
	4	7	3	2	3	3	16	8	19	19	
	5	12	2	2	3	3	14	7	18	18	
	6	15	2	2	3	3	13	7	18	17	
	7	24	1	1	2	2	10	7	17	15	
	8	26	1	1	2	2	9	7	17	14	
	9	30	1	1	2	2	7	7	17	14	
20	1	6	4	5	5	3	23	26	15	22	
	2	7	4	4	4	2	22	26	14	21	
	3	8	4	4	4	2	22	23	13	20	
	4	12	4	4	4	2	22	23	12	18	
	5	15	4	4	4	1	22	19	12	15	
	6	16	4	4	3	1	22	19	11	14	
	7	17	4	4	3	1	22	16	11	10	
	8	22	4	4	3	1	22	16	11	8	
	9	27	4	4	3	1	22	13	10	8	
21	1	2	5	1	4	5	17	29	23	8	
	2	4	4	1	4	4	16	27	18	7	
	3	13	4	1	4	4	15	23	15	7	
	4	14	4	1	4	3	13	22	14	7	
	5	15	4	1	4	3	12	19	12	6	
	6	21	4	1	4	3	10	17	9	6	
	7	22	4	1	4	2	10	16	5	6	
	8	25	4	1	4	2	8	15	5	5	
	9	26	4	1	4	2	6	13	1	5	
22	1	2	4	1	1	4	20	4	26	7	
	2	7	4	1	1	4	17	3	25	6	
	3	10	4	1	1	4	13	3	24	5	
	4	15	4	1	1	4	11	3	23	5	
	5	17	3	1	1	4	9	3	21	5	
	6	19	3	1	1	4	8	3	21	4	
	7	20	3	1	1	4	7	3	20	4	
	8	22	3	1	1	4	3	3	18	3	
	9	27	3	1	1	4	3	3	17	3	
23	1	1	2	4	2	4	28	11	28	19	
	2	5	2	3	1	4	28	10	23	17	
	3	6	2	3	1	4	27	10	20	17	
	4	7	2	2	1	4	26	10	18	16	
	5	10	2	2	1	4	24	10	17	14	
	6	16	2	2	1	3	24	10	14	14	
	7	19	2	1	1	3	23	10	10	12	
	8	23	2	1	1	3	21	10	8	11	
	9	24	2	1	1	3	21	10	6	10	
24	1	7	3	4	4	1	10	27	26	24	
	2	9	3	4	4	1	9	23	25	23	
	3	12	3	4	4	1	9	18	24	23	
	4	15	3	3	4	1	9	15	23	23	
	5	21	3	3	4	1	8	14	23	22	
	6	22	3	2	4	1	8	13	22	22	
	7	23	3	1	4	1	7	9	22	21	
	8	24	3	1	4	1	6	6	20	21	
	9	25	3	1	4	1	6	3	20	21	
25	1	1	2	3	5	3	25	25	26	22	
	2	2	2	3	4	2	23	24	23	20	
	3	6	2	3	4	2	23	23	21	18	
	4	7	2	3	4	2	22	21	16	17	
	5	8	1	3	3	2	22	20	15	15	
	6	9	1	3	3	2	21	20	9	13	
	7	10	1	3	3	2	21	18	7	10	
	8	25	1	3	3	2	21	17	4	8	
	9	29	1	3	3	2	20	17	2	8	
26	1	3	3	1	4	5	17	19	24	28	
	2	4	3	1	4	4	17	17	21	28	
	3	7	3	1	4	4	15	15	21	26	
	4	15	2	1	4	4	14	13	19	24	
	5	24	2	1	4	3	14	13	19	24	
	6	25	2	1	4	3	13	11	16	23	
	7	27	2	1	4	2	12	9	16	21	
	8	28	1	1	4	2	11	8	15	20	
	9	30	1	1	4	2	11	7	13	18	
27	1	11	5	4	5	2	29	30	20	16	
	2	12	5	3	4	2	28	28	16	14	
	3	14	5	3	3	2	28	28	16	13	
	4	15	5	3	3	2	28	26	12	13	
	5	20	5	2	2	2	27	26	10	10	
	6	21	5	2	2	2	26	24	8	10	
	7	24	5	2	1	2	26	24	7	9	
	8	25	5	1	1	2	25	23	6	8	
	9	26	5	1	1	2	24	22	3	7	
28	1	2	4	3	5	3	10	15	22	30	
	2	3	3	3	4	2	10	14	19	26	
	3	4	3	3	4	2	9	13	17	23	
	4	5	3	3	4	2	8	12	16	19	
	5	9	3	3	3	2	7	11	13	18	
	6	13	3	3	3	2	6	10	13	13	
	7	19	3	3	2	2	5	10	9	10	
	8	22	3	3	2	2	4	8	8	8	
	9	26	3	3	2	2	4	8	6	5	
29	1	1	4	4	4	5	22	29	25	23	
	2	5	4	3	4	5	21	29	23	23	
	3	6	4	3	4	5	20	28	22	17	
	4	10	3	3	4	5	20	28	21	14	
	5	13	3	2	4	5	18	26	21	14	
	6	17	3	2	3	5	18	26	19	12	
	7	18	3	2	3	5	18	26	18	8	
	8	20	2	2	3	5	16	24	18	5	
	9	26	2	2	3	5	16	24	16	1	
30	1	1	4	5	1	5	23	29	19	14	
	2	7	3	4	1	5	23	29	16	12	
	3	13	3	4	1	5	22	29	15	12	
	4	14	3	4	1	5	21	28	13	10	
	5	16	2	4	1	5	20	28	10	10	
	6	17	2	4	1	5	18	27	9	9	
	7	19	2	4	1	5	16	26	8	7	
	8	25	1	4	1	5	16	26	6	6	
	9	30	1	4	1	5	14	26	4	5	
31	1	2	5	2	4	4	26	29	28	24	
	2	4	4	2	3	3	26	28	25	22	
	3	5	4	2	3	3	25	26	22	17	
	4	15	4	2	3	2	23	25	21	14	
	5	16	4	2	3	2	22	24	19	13	
	6	21	4	2	3	2	20	24	18	9	
	7	25	4	2	3	1	17	23	16	8	
	8	26	4	2	3	1	17	22	15	4	
	9	30	4	2	3	1	15	20	13	2	
32	1	4	4	4	2	1	25	17	27	19	
	2	8	4	4	2	1	24	14	26	17	
	3	9	4	4	2	1	23	14	26	15	
	4	10	3	4	2	1	22	13	26	14	
	5	11	3	3	2	1	21	11	26	14	
	6	14	3	3	2	1	19	8	26	13	
	7	15	2	2	2	1	18	6	26	12	
	8	22	2	2	2	1	17	4	26	10	
	9	27	2	2	2	1	16	4	26	9	
33	1	1	4	2	3	4	23	23	16	24	
	2	7	4	1	3	3	21	22	14	24	
	3	10	4	1	3	3	18	20	12	22	
	4	12	4	1	3	3	17	19	12	21	
	5	13	4	1	3	2	15	17	10	20	
	6	14	3	1	3	2	14	15	10	19	
	7	18	3	1	3	1	11	13	9	17	
	8	20	3	1	3	1	8	12	7	16	
	9	23	3	1	3	1	8	11	6	15	
34	1	1	1	2	3	5	26	25	25	17	
	2	9	1	2	2	5	25	21	24	17	
	3	11	1	2	2	5	22	21	23	15	
	4	12	1	2	2	5	19	18	22	15	
	5	13	1	2	2	5	18	17	19	13	
	6	20	1	2	1	5	16	16	19	12	
	7	21	1	2	1	5	15	13	16	10	
	8	26	1	2	1	5	13	13	15	9	
	9	30	1	2	1	5	12	11	14	9	
35	1	3	4	1	3	1	17	30	28	18	
	2	5	3	1	2	1	16	29	26	17	
	3	8	3	1	2	1	15	27	25	15	
	4	11	3	1	2	1	15	26	23	12	
	5	14	2	1	2	1	14	25	22	11	
	6	16	2	1	1	1	13	25	21	10	
	7	21	1	1	1	1	13	23	20	8	
	8	26	1	1	1	1	12	22	20	5	
	9	27	1	1	1	1	11	22	18	5	
36	1	3	4	4	4	4	13	28	16	29	
	2	5	4	3	3	4	12	27	14	28	
	3	6	4	3	3	4	12	27	14	27	
	4	7	4	3	2	4	11	27	13	28	
	5	19	4	3	2	3	10	26	13	27	
	6	21	4	3	2	3	10	26	12	27	
	7	22	4	3	1	3	9	25	12	27	
	8	25	4	3	1	3	8	25	12	27	
	9	28	4	3	1	3	7	25	11	27	
37	1	5	3	4	3	4	25	17	21	20	
	2	6	2	4	2	4	21	17	20	20	
	3	17	2	4	2	4	19	16	19	20	
	4	18	2	4	2	3	16	13	19	19	
	5	20	2	4	2	3	15	13	17	19	
	6	22	2	4	2	2	10	11	16	19	
	7	24	2	4	2	1	8	9	15	18	
	8	26	2	4	2	1	7	7	15	18	
	9	28	2	4	2	1	3	6	14	18	
38	1	2	1	3	3	3	30	24	29	29	
	2	3	1	2	2	3	27	20	28	27	
	3	6	1	2	2	3	27	18	27	27	
	4	7	1	2	2	3	25	15	27	25	
	5	8	1	2	1	3	25	15	26	24	
	6	10	1	1	1	3	23	13	26	24	
	7	12	1	1	1	3	21	9	26	23	
	8	23	1	1	1	3	20	8	25	22	
	9	30	1	1	1	3	19	4	25	20	
39	1	1	3	4	1	4	21	20	29	20	
	2	6	3	4	1	3	19	19	29	18	
	3	8	3	4	1	3	15	18	28	16	
	4	10	3	4	1	3	15	18	28	13	
	5	13	3	3	1	2	12	17	27	13	
	6	17	3	3	1	2	10	17	27	10	
	7	19	3	2	1	2	7	16	26	8	
	8	26	3	2	1	2	7	15	26	8	
	9	27	3	2	1	2	3	15	26	5	
40	1	5	3	2	3	5	29	24	27	20	
	2	9	3	1	3	5	29	23	27	16	
	3	10	3	1	3	5	29	22	26	15	
	4	12	3	1	3	5	29	22	25	15	
	5	14	3	1	3	5	29	21	24	12	
	6	18	2	1	2	5	29	21	24	10	
	7	19	2	1	2	5	29	20	22	10	
	8	25	2	1	2	5	29	20	21	7	
	9	28	2	1	2	5	29	19	21	6	
41	1	2	1	5	4	3	18	20	26	16	
	2	9	1	4	4	3	16	19	25	13	
	3	10	1	4	4	3	16	16	25	12	
	4	12	1	4	3	3	15	15	25	11	
	5	14	1	4	3	3	14	12	24	8	
	6	15	1	3	2	3	13	11	24	6	
	7	23	1	3	1	3	11	10	24	6	
	8	28	1	3	1	3	10	7	23	2	
	9	29	1	3	1	3	10	5	23	1	
42	1	8	5	5	3	4	28	25	20	21	
	2	9	4	5	3	4	24	24	19	20	
	3	11	4	5	3	4	22	24	19	20	
	4	17	4	5	3	3	18	24	19	20	
	5	21	4	5	3	2	15	23	18	19	
	6	22	4	5	3	2	13	23	18	19	
	7	23	4	5	3	1	9	23	18	19	
	8	28	4	5	3	1	7	22	18	19	
	9	29	4	5	3	1	4	22	18	19	
43	1	1	1	1	1	4	4	29	16	10	
	2	11	1	1	1	4	4	27	15	9	
	3	12	1	1	1	4	4	22	14	9	
	4	15	1	1	1	3	4	20	14	8	
	5	20	1	1	1	3	4	20	14	7	
	6	23	1	1	1	3	4	16	13	5	
	7	24	1	1	1	2	4	15	12	4	
	8	26	1	1	1	2	4	11	12	3	
	9	30	1	1	1	2	4	8	12	3	
44	1	3	5	3	1	2	27	21	30	22	
	2	4	4	3	1	2	24	19	29	22	
	3	13	3	3	1	2	21	18	28	21	
	4	21	3	3	1	2	18	16	28	21	
	5	25	2	3	1	2	16	16	28	21	
	6	26	2	3	1	1	16	15	27	20	
	7	27	1	3	1	1	11	14	27	19	
	8	28	1	3	1	1	11	11	26	19	
	9	30	1	3	1	1	8	11	26	19	
45	1	6	4	1	3	5	16	21	17	16	
	2	9	4	1	2	4	16	20	15	16	
	3	12	4	1	2	4	15	19	15	16	
	4	15	4	1	2	4	13	19	14	16	
	5	18	4	1	2	3	13	19	13	16	
	6	19	4	1	1	3	11	18	12	16	
	7	22	4	1	1	2	10	18	11	16	
	8	23	4	1	1	2	8	17	10	16	
	9	24	4	1	1	2	8	17	10	15	
46	1	12	4	5	3	2	26	15	24	13	
	2	14	4	5	3	2	23	12	24	13	
	3	16	4	5	3	2	22	11	23	11	
	4	19	4	5	2	2	20	10	21	10	
	5	23	4	5	2	2	18	9	20	10	
	6	24	4	5	2	2	15	6	19	10	
	7	25	4	5	2	2	12	5	18	8	
	8	27	4	5	1	2	11	4	16	8	
	9	28	4	5	1	2	10	3	15	7	
47	1	2	2	2	5	4	23	24	28	29	
	2	3	2	2	4	3	20	24	27	24	
	3	4	2	2	4	3	20	24	25	24	
	4	5	2	2	4	3	18	23	22	21	
	5	6	2	2	4	2	15	23	20	16	
	6	9	2	2	4	2	14	23	18	16	
	7	16	2	2	4	2	12	22	15	14	
	8	18	2	2	4	2	10	22	14	9	
	9	30	2	2	4	2	8	22	12	8	
48	1	1	3	4	4	4	26	29	19	9	
	2	3	2	4	3	4	23	25	19	8	
	3	7	2	4	3	4	23	24	18	7	
	4	14	2	4	2	3	21	21	16	7	
	5	20	1	3	2	2	20	21	15	6	
	6	22	1	3	2	2	20	18	14	6	
	7	25	1	2	2	1	18	15	14	6	
	8	26	1	2	1	1	17	15	13	5	
	9	27	1	2	1	1	16	12	12	5	
49	1	1	3	3	2	3	17	30	23	26	
	2	6	3	3	2	3	15	27	23	25	
	3	9	3	3	2	3	15	25	23	24	
	4	16	3	3	2	3	15	24	22	23	
	5	17	3	2	1	2	14	23	22	22	
	6	21	3	2	1	2	13	21	21	20	
	7	22	3	2	1	2	13	19	21	19	
	8	24	3	1	1	1	12	17	20	18	
	9	25	3	1	1	1	12	17	20	17	
50	1	3	4	5	5	5	19	6	26	26	
	2	5	4	5	4	5	18	6	24	26	
	3	12	4	5	3	5	17	5	22	26	
	4	13	4	5	3	5	16	5	20	26	
	5	15	4	5	2	5	16	3	19	26	
	6	16	4	5	2	5	15	3	16	26	
	7	20	4	5	2	5	14	3	15	26	
	8	21	4	5	1	5	13	2	13	26	
	9	22	4	5	1	5	12	1	11	26	
51	1	12	4	4	5	2	10	25	25	10	
	2	14	4	3	4	1	9	25	24	9	
	3	15	4	3	4	1	9	24	23	9	
	4	16	3	2	3	1	8	23	20	9	
	5	17	3	2	3	1	7	21	20	7	
	6	23	3	2	3	1	7	21	19	7	
	7	26	3	2	2	1	6	19	16	7	
	8	27	2	1	2	1	6	18	16	6	
	9	30	2	1	2	1	6	18	14	5	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	23	21	24	21	702	724	795	672

************************************************************************
