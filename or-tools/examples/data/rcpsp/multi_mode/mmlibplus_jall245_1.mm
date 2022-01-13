jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	14		2 3 4 5 6 7 8 9 11 14 15 16 17 26 
2	9	9		50 33 31 30 29 28 24 13 12 
3	9	9		50 35 33 32 29 25 21 19 12 
4	9	8		50 49 29 28 23 20 19 10 
5	9	7		50 47 40 30 28 23 12 
6	9	6		51 50 47 40 28 12 
7	9	10		51 50 49 46 45 43 41 28 24 19 
8	9	9		46 45 42 40 30 29 27 24 18 
9	9	8		51 48 42 36 28 27 23 18 
10	9	8		45 44 41 39 38 37 22 21 
11	9	7		45 42 40 37 36 31 18 
12	9	8		48 46 44 43 41 39 27 20 
13	9	6		49 41 39 27 22 21 
14	9	9		46 45 44 41 40 39 32 29 28 
15	9	9		51 50 48 47 41 38 37 29 22 
16	9	8		51 50 47 46 39 36 27 24 
17	9	8		49 47 41 39 38 36 34 27 
18	9	6		49 44 43 41 39 38 
19	9	5		42 40 39 36 27 
20	9	5		45 42 38 37 36 
21	9	3		48 47 43 
22	9	3		42 40 36 
23	9	3		46 39 37 
24	9	2		44 38 
25	9	2		40 38 
26	9	2		45 36 
27	9	1		37 
28	9	1		37 
29	9	1		36 
30	9	1		43 
31	9	1		51 
32	9	1		38 
33	9	1		36 
34	9	1		40 
35	9	1		37 
36	9	1		52 
37	9	1		52 
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
2	1	2	2	23	24	9	7	30	
	2	7	1	23	23	9	7	29	
	3	14	1	23	20	8	7	29	
	4	16	1	23	19	8	7	28	
	5	17	1	23	18	7	7	28	
	6	18	1	23	17	6	7	28	
	7	23	1	23	15	5	7	28	
	8	26	1	23	13	5	7	27	
	9	29	1	23	13	4	7	27	
3	1	3	14	14	27	27	26	23	
	2	10	14	12	27	24	25	20	
	3	11	14	10	27	19	25	18	
	4	17	14	9	26	17	25	18	
	5	18	14	8	26	17	25	15	
	6	21	14	6	26	14	25	13	
	7	22	14	5	26	9	25	13	
	8	23	14	3	25	7	25	11	
	9	28	14	3	25	7	25	8	
4	1	8	26	26	14	25	8	15	
	2	9	24	24	14	21	7	14	
	3	10	24	21	13	20	7	14	
	4	11	20	18	11	14	6	14	
	5	13	19	18	9	12	6	14	
	6	15	19	16	8	9	6	14	
	7	18	16	13	5	8	5	14	
	8	27	13	12	5	3	5	14	
	9	29	12	10	3	1	5	14	
5	1	6	17	30	27	25	12	14	
	2	11	16	28	27	24	11	11	
	3	15	16	25	25	24	11	9	
	4	18	16	22	24	24	10	8	
	5	19	15	21	23	24	10	7	
	6	25	15	21	22	24	10	6	
	7	27	14	17	22	24	9	5	
	8	28	13	15	21	24	8	2	
	9	30	13	14	20	24	8	2	
6	1	2	19	22	24	13	21	29	
	2	3	16	21	23	13	20	24	
	3	4	16	19	23	11	20	20	
	4	5	13	18	20	11	20	18	
	5	7	13	16	18	8	20	16	
	6	13	11	13	17	7	20	13	
	7	17	9	12	15	6	20	11	
	8	18	9	11	15	6	20	6	
	9	20	8	9	14	4	20	3	
7	1	7	5	24	6	12	11	20	
	2	8	5	23	5	12	10	20	
	3	11	4	21	5	12	9	20	
	4	12	4	21	4	12	8	20	
	5	13	3	19	4	12	6	20	
	6	17	3	18	4	12	5	20	
	7	18	2	18	3	12	5	20	
	8	23	2	17	3	12	4	20	
	9	29	1	16	3	12	3	20	
8	1	4	29	9	6	8	18	23	
	2	6	28	9	6	8	18	22	
	3	10	28	7	5	7	17	21	
	4	11	28	6	4	6	16	19	
	5	12	28	5	4	5	15	18	
	6	13	27	5	3	5	15	18	
	7	18	27	3	2	3	15	16	
	8	19	27	3	1	3	14	15	
	9	24	27	1	1	2	13	15	
9	1	3	23	9	21	22	19	18	
	2	6	23	8	21	18	18	18	
	3	9	22	8	19	16	18	17	
	4	11	22	7	19	15	18	16	
	5	14	21	6	17	13	17	16	
	6	17	20	6	16	11	17	15	
	7	27	20	5	15	11	16	15	
	8	28	19	5	12	9	16	14	
	9	29	19	5	11	7	16	14	
10	1	5	20	23	26	21	9	21	
	2	15	19	20	25	21	7	20	
	3	16	18	19	25	20	7	20	
	4	17	17	15	25	18	5	20	
	5	18	17	14	24	17	4	19	
	6	19	17	13	24	16	3	19	
	7	23	16	11	24	15	3	19	
	8	24	16	9	24	15	1	18	
	9	30	15	6	24	14	1	18	
11	1	3	24	6	20	24	10	16	
	2	5	23	6	19	24	9	15	
	3	11	23	6	18	24	8	13	
	4	13	22	5	17	23	8	12	
	5	14	22	4	16	22	5	12	
	6	18	21	4	14	22	4	11	
	7	23	21	4	14	22	4	10	
	8	24	20	3	12	21	2	10	
	9	29	20	3	12	21	1	9	
12	1	1	20	15	21	26	21	20	
	2	2	19	14	21	25	21	20	
	3	3	18	11	19	24	21	20	
	4	4	17	9	16	24	21	20	
	5	8	16	9	15	23	21	20	
	6	10	15	7	14	22	21	20	
	7	23	15	5	13	22	21	20	
	8	24	14	4	11	22	21	20	
	9	28	13	2	9	21	21	20	
13	1	2	13	28	18	16	17	24	
	2	9	13	25	18	15	16	21	
	3	10	13	22	18	13	15	18	
	4	11	13	19	18	12	15	16	
	5	21	12	17	17	10	14	14	
	6	22	12	13	17	8	14	13	
	7	25	11	13	17	6	13	9	
	8	28	11	11	17	6	13	5	
	9	30	11	8	17	3	13	3	
14	1	1	16	13	26	28	22	16	
	2	5	14	11	25	26	20	16	
	3	12	12	11	25	23	18	16	
	4	13	10	10	25	22	16	16	
	5	15	10	8	25	17	15	16	
	6	16	9	7	25	16	14	16	
	7	18	7	7	25	13	14	16	
	8	19	4	6	25	13	11	16	
	9	30	3	4	25	9	10	16	
15	1	6	26	18	23	14	19	21	
	2	7	23	15	20	13	19	20	
	3	11	19	15	18	12	17	17	
	4	12	17	14	18	11	17	15	
	5	14	15	11	15	9	16	14	
	6	15	13	9	13	8	15	14	
	7	23	11	9	12	7	14	12	
	8	27	8	6	10	6	13	8	
	9	28	4	5	8	6	12	7	
16	1	5	25	29	23	18	24	18	
	2	13	23	26	20	18	21	17	
	3	15	23	23	20	18	21	14	
	4	16	19	19	17	18	19	14	
	5	17	18	18	13	18	18	12	
	6	18	18	14	11	18	17	10	
	7	19	16	11	9	18	14	7	
	8	25	13	10	7	18	14	5	
	9	27	12	6	6	18	12	4	
17	1	1	22	24	20	28	28	24	
	2	2	20	22	20	25	27	22	
	3	16	18	20	17	23	24	22	
	4	17	18	18	16	18	21	21	
	5	20	16	16	14	18	20	19	
	6	21	13	15	13	15	19	18	
	7	24	11	14	12	12	15	16	
	8	29	11	13	10	9	13	16	
	9	30	9	12	10	8	12	14	
18	1	2	21	14	28	23	21	10	
	2	4	21	14	26	22	20	10	
	3	6	21	12	25	18	16	10	
	4	11	21	11	25	17	14	10	
	5	20	21	9	22	14	13	10	
	6	21	21	8	21	10	12	10	
	7	22	21	7	21	9	9	10	
	8	23	21	7	19	6	8	10	
	9	24	21	5	18	2	6	10	
19	1	2	17	14	16	6	16	19	
	2	3	17	14	16	6	16	18	
	3	4	15	14	13	6	14	18	
	4	7	15	14	12	6	12	18	
	5	15	14	14	12	6	12	18	
	6	18	13	14	10	6	10	18	
	7	21	12	14	8	6	9	18	
	8	23	11	14	6	6	6	18	
	9	28	10	14	6	6	6	18	
20	1	3	14	24	24	22	8	10	
	2	4	14	22	21	21	8	9	
	3	5	13	20	17	18	6	9	
	4	8	12	19	16	16	5	9	
	5	19	11	18	14	14	5	9	
	6	20	11	16	10	11	5	9	
	7	24	11	13	9	8	4	9	
	8	25	9	11	6	4	3	9	
	9	26	9	9	2	1	2	9	
21	1	1	24	10	10	14	29	20	
	2	3	23	9	10	12	27	19	
	3	5	23	8	9	10	23	19	
	4	7	23	8	9	10	23	18	
	5	9	23	7	8	7	19	19	
	6	12	22	7	8	6	18	19	
	7	20	22	7	8	5	15	19	
	8	22	22	6	7	5	12	19	
	9	30	22	6	7	3	11	19	
22	1	1	20	22	27	3	26	22	
	2	2	18	21	26	3	23	21	
	3	3	14	21	26	3	21	21	
	4	10	13	20	25	3	21	21	
	5	11	11	20	25	3	18	21	
	6	12	10	19	24	3	17	20	
	7	13	9	18	24	3	15	20	
	8	14	7	18	24	3	13	20	
	9	18	5	18	23	3	12	20	
23	1	3	27	28	28	28	17	20	
	2	5	27	27	25	28	17	18	
	3	6	27	26	23	28	13	17	
	4	9	27	26	22	27	13	17	
	5	18	26	25	18	27	11	16	
	6	19	26	24	17	26	9	14	
	7	20	25	23	12	25	5	14	
	8	22	25	22	10	25	5	13	
	9	25	25	22	10	25	2	12	
24	1	1	11	16	15	27	9	17	
	2	4	10	15	14	25	9	16	
	3	10	9	14	13	25	9	15	
	4	11	9	14	11	24	9	12	
	5	12	8	12	10	23	8	11	
	6	13	8	12	9	21	8	10	
	7	14	7	11	8	21	7	8	
	8	20	6	11	7	19	7	6	
	9	26	6	10	6	19	7	5	
25	1	1	14	8	6	28	24	22	
	2	4	12	8	6	23	21	20	
	3	6	11	6	6	23	18	18	
	4	12	9	5	6	21	16	17	
	5	19	7	5	6	18	14	15	
	6	22	6	5	6	13	14	14	
	7	24	5	3	6	12	10	13	
	8	26	5	2	6	11	8	11	
	9	29	4	2	6	8	8	10	
26	1	5	11	25	26	23	24	7	
	2	8	11	24	23	23	24	6	
	3	13	11	23	20	23	19	6	
	4	19	10	21	15	23	16	5	
	5	21	10	18	13	23	16	5	
	6	22	9	17	12	23	13	4	
	7	23	9	13	8	23	9	4	
	8	25	8	12	7	23	6	3	
	9	30	8	10	4	23	6	3	
27	1	1	19	29	14	17	21	20	
	2	2	17	28	14	13	20	19	
	3	6	14	28	13	12	20	18	
	4	8	14	28	13	12	18	16	
	5	11	11	28	13	10	18	13	
	6	14	11	28	12	9	18	12	
	7	15	9	28	12	7	17	10	
	8	24	7	28	11	6	15	9	
	9	25	4	28	11	4	15	9	
28	1	2	23	28	29	23	7	10	
	2	11	20	28	27	22	6	9	
	3	12	16	28	27	21	6	9	
	4	15	14	28	25	21	6	8	
	5	19	12	28	25	21	5	8	
	6	22	12	28	23	20	5	7	
	7	23	8	28	22	19	5	7	
	8	26	7	28	22	19	4	7	
	9	30	4	28	21	19	4	6	
29	1	4	22	22	25	19	16	20	
	2	5	21	22	24	19	13	18	
	3	11	19	21	23	19	12	18	
	4	13	16	19	23	19	12	17	
	5	15	16	19	21	19	9	15	
	6	19	12	19	21	19	9	13	
	7	27	11	17	20	19	7	12	
	8	28	9	16	19	19	6	12	
	9	29	7	16	18	19	5	10	
30	1	2	6	26	13	18	8	11	
	2	3	6	25	12	18	7	11	
	3	6	6	25	11	16	7	11	
	4	9	6	25	9	16	7	10	
	5	10	6	25	8	14	7	9	
	6	13	5	25	7	14	7	9	
	7	15	5	25	6	12	7	8	
	8	20	5	25	5	11	7	8	
	9	26	5	25	5	11	7	7	
31	1	1	25	16	24	12	23	28	
	2	2	25	13	22	11	21	27	
	3	9	21	13	21	10	20	27	
	4	10	19	12	20	7	17	26	
	5	11	15	10	20	7	15	25	
	6	18	12	9	18	5	14	23	
	7	21	8	7	18	4	13	23	
	8	23	7	7	16	3	12	21	
	9	26	4	6	16	2	10	21	
32	1	7	8	29	9	14	22	16	
	2	8	8	27	9	12	20	12	
	3	9	7	25	9	10	20	11	
	4	10	7	25	9	10	19	11	
	5	15	6	24	9	7	17	8	
	6	18	5	22	8	7	16	8	
	7	21	5	21	8	6	15	5	
	8	29	4	20	8	5	15	3	
	9	30	3	19	8	3	13	2	
33	1	4	21	10	28	12	26	25	
	2	9	21	10	26	12	23	24	
	3	13	17	10	26	11	20	24	
	4	14	17	10	25	9	18	21	
	5	17	13	10	24	9	14	20	
	6	21	12	10	23	8	13	20	
	7	22	10	10	21	8	9	18	
	8	25	7	10	20	7	8	17	
	9	29	5	10	20	6	5	15	
34	1	3	30	28	21	12	28	21	
	2	6	26	27	21	11	26	19	
	3	13	26	25	20	11	25	19	
	4	17	23	25	18	9	22	17	
	5	18	20	23	17	9	22	13	
	6	20	20	23	17	8	18	13	
	7	21	17	22	16	6	18	9	
	8	22	14	20	15	5	14	9	
	9	23	14	20	14	5	13	6	
35	1	5	15	17	29	12	15	9	
	2	10	14	16	24	11	15	9	
	3	14	14	13	23	10	15	8	
	4	18	13	12	18	9	15	7	
	5	21	13	10	18	7	14	6	
	6	23	13	9	15	7	14	5	
	7	25	12	8	10	5	14	5	
	8	28	12	5	8	5	14	4	
	9	29	12	4	6	4	14	3	
36	1	7	25	19	5	29	27	21	
	2	13	24	16	5	25	27	20	
	3	15	22	15	4	22	25	20	
	4	16	21	13	4	21	24	19	
	5	17	21	13	4	18	23	18	
	6	18	19	10	3	17	22	18	
	7	20	18	10	3	12	21	18	
	8	21	18	7	2	9	19	17	
	9	30	16	6	2	9	19	17	
37	1	1	29	24	18	19	23	25	
	2	3	28	23	18	18	21	24	
	3	6	26	22	16	17	19	23	
	4	8	26	22	16	16	16	22	
	5	13	25	20	15	15	14	21	
	6	20	24	20	14	13	10	21	
	7	22	23	18	13	12	9	20	
	8	27	21	17	11	12	7	20	
	9	28	20	17	11	11	3	19	
38	1	3	18	23	27	10	27	29	
	2	8	17	23	23	8	27	27	
	3	9	15	23	23	7	26	24	
	4	13	14	23	20	7	25	23	
	5	19	11	23	16	6	25	20	
	6	20	10	23	14	5	24	20	
	7	22	8	23	11	4	24	17	
	8	24	7	23	11	4	23	15	
	9	27	5	23	7	3	23	14	
39	1	3	14	29	20	22	23	29	
	2	11	11	26	17	20	23	28	
	3	14	10	23	15	18	22	28	
	4	21	8	21	13	17	21	28	
	5	23	6	19	10	16	19	28	
	6	24	6	19	7	13	19	27	
	7	26	4	17	7	13	18	27	
	8	29	3	15	5	11	16	27	
	9	30	1	13	1	8	16	27	
40	1	6	28	25	14	18	23	22	
	2	7	23	25	12	18	18	21	
	3	18	21	23	11	18	17	21	
	4	19	19	20	9	17	16	20	
	5	21	19	20	8	17	13	20	
	6	22	17	18	7	16	10	19	
	7	26	15	17	6	15	6	18	
	8	28	13	13	5	15	3	18	
	9	29	9	12	3	15	1	18	
41	1	1	23	23	24	14	28	27	
	2	2	23	19	23	14	27	27	
	3	3	22	18	21	13	26	27	
	4	4	22	16	17	12	25	26	
	5	11	21	16	16	11	24	26	
	6	12	20	14	15	9	23	25	
	7	16	19	12	12	8	21	24	
	8	17	18	12	11	8	21	24	
	9	22	18	9	9	7	19	24	
42	1	1	28	20	6	22	25	3	
	2	3	23	19	6	20	22	2	
	3	5	20	19	6	19	21	2	
	4	8	17	18	6	19	17	2	
	5	14	15	16	6	18	15	2	
	6	19	12	14	6	17	13	2	
	7	20	11	13	6	17	12	2	
	8	21	7	12	6	16	11	2	
	9	24	2	12	6	15	9	2	
43	1	2	23	14	26	25	16	27	
	2	3	23	14	25	24	15	25	
	3	5	21	13	25	24	15	25	
	4	6	20	13	23	23	13	24	
	5	9	18	13	23	22	12	23	
	6	12	16	12	23	22	10	23	
	7	13	15	11	21	22	10	21	
	8	18	13	11	21	21	9	20	
	9	19	11	11	20	21	8	20	
44	1	4	19	30	22	14	22	14	
	2	7	19	29	22	14	20	14	
	3	12	16	29	22	14	17	12	
	4	20	16	29	22	13	16	11	
	5	22	12	28	22	13	13	11	
	6	23	12	28	22	12	13	9	
	7	24	11	28	22	11	12	8	
	8	28	9	28	22	11	10	8	
	9	30	6	28	22	11	8	6	
45	1	1	9	26	28	9	21	15	
	2	2	8	25	27	8	19	15	
	3	4	7	24	26	8	17	12	
	4	10	7	21	26	8	16	10	
	5	11	5	18	23	7	14	9	
	6	14	4	16	23	6	11	7	
	7	15	3	14	22	5	6	6	
	8	19	2	11	20	4	4	5	
	9	28	2	10	19	4	3	3	
46	1	1	17	24	21	9	30	28	
	2	2	16	23	21	8	25	26	
	3	3	14	23	21	8	23	26	
	4	9	14	23	20	7	19	24	
	5	10	12	22	20	7	14	23	
	6	15	12	22	19	6	14	22	
	7	25	10	21	19	5	10	22	
	8	26	10	21	18	5	6	21	
	9	28	9	21	18	5	2	19	
47	1	1	20	26	23	25	15	7	
	2	4	18	23	21	25	15	7	
	3	5	15	22	19	25	15	7	
	4	6	13	21	18	24	15	7	
	5	9	12	18	17	24	14	7	
	6	12	11	18	15	24	14	7	
	7	13	9	17	15	24	14	7	
	8	20	6	14	12	23	13	7	
	9	28	5	14	12	23	13	7	
48	1	1	19	24	26	12	24	28	
	2	4	19	24	22	10	23	28	
	3	6	18	24	21	10	23	26	
	4	12	16	24	19	9	23	25	
	5	14	16	24	18	8	22	23	
	6	15	15	23	16	8	22	22	
	7	22	14	23	14	7	21	21	
	8	28	13	23	12	7	21	19	
	9	29	13	23	11	6	20	18	
49	1	4	22	28	29	3	10	10	
	2	5	19	27	26	3	10	9	
	3	12	19	26	24	3	10	8	
	4	13	16	26	22	3	10	8	
	5	15	15	25	21	2	10	7	
	6	16	13	25	18	2	10	7	
	7	19	11	24	17	1	10	6	
	8	21	11	23	16	1	10	6	
	9	22	9	23	14	1	10	6	
50	1	6	27	23	24	25	13	15	
	2	7	24	20	21	25	13	15	
	3	9	24	20	21	22	10	15	
	4	10	23	18	18	19	10	14	
	5	14	21	17	17	18	8	14	
	6	16	19	17	16	17	7	13	
	7	20	18	15	13	13	6	12	
	8	22	16	15	12	12	3	12	
	9	26	16	13	9	10	2	12	
51	1	4	27	30	25	24	11	6	
	2	7	25	29	21	20	10	5	
	3	8	22	28	19	19	10	4	
	4	9	21	28	19	17	8	4	
	5	10	19	27	15	13	7	3	
	6	19	15	26	14	10	6	3	
	7	20	11	25	13	8	6	2	
	8	24	11	24	11	5	5	2	
	9	27	8	24	7	3	3	1	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	88	96	804	692	717	768

************************************************************************
