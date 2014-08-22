Leadership Project
==========
>####You are very familiar with Western ways, but you are too young. You go everywhere to follow the big news, but the questions you ask are too simple, sometimes naive. ---[*Z.M.Jiang*](http://en.wikiquote.org/wiki/Jiang_Zemin)

Thus we have this project to explore each scenario where we might learn something from these great leaders' personal experience.（**通过学习长者的人生经验涨姿势**）

This is for my R.A. Job@NSD, Peking Univ. This project is led by  [Prof.Tianyang Xi](http://www.xitianyang.com/). We construct a dataset covering the individual characters of Leaders, and start to do some *empirical* research on it[<SUP>\*</SUP>](#Com) .

**Fields**: Political Economics

**Dataset Coverage**: The data set is intended to cover all countries that were or would become independent at any time after 1917, each from the inception of the first representative institutions or from the date of independence, whichever comes first, through 2010.



- [x] Cleanup
- [x] Merge
	- [x] PIPE
	- [x] PWT80
		- [ ] Czechoslovakia, yugoslavia, yemensouth, germany
	- [x] ddrevisted
		- [ ] 6% unmatched
	- [x] Archigos
- [ ] Basic Trend Table
	- [x] Selection mechanism / barrier to entry
	- [x] Education
		- [ ] CIS countries: 3.8, 3.12
	- [ ] Age & gender
	- [ ] Experience
	- [ ] Correlation analysis
- [ ] Regression


1.Cleanup
----------
See the [*Cleanup*](https://github.com/Hari-Sheng/Leadership/tree/master/Cleanup/DoFile) directory. The main **Stata** do-file is [*CleanUpMain.do*](https://github.com/Hari-Sheng/Leadership/blob/master/Cleanup/DoFile/CleanUpMain.do).
It will: 

- a)walk through the Excel tables submitted by the R.A. group and merge them into a **Stata** .dta dataset; 
- b)add author marker for each observation; 
- c)cleanup messy code, ASCII, strange symbols and extra space, etc; 
- d)try to correct typos generated by Excel; 
- e)sample several observations for further manual check. 

2.Merge
----------
See the [*Merge*](https://github.com/Hari-Sheng/Leadership/tree/master/Merge/DoFile) directory. The main **Stata** do-file is [*MergeMain.do*](https://github.com/Hari-Sheng/Leadership/blob/master/Merge/DoFile/MergeMain.do).
Merge our dataset with following dataset:

-  PIPE
-  ARCHIGO (A Data Set on Leaders 1875–2004, by Goemans, Gleditsch, and Chiozza)
-  [Penn World Table 8.0](http://www.rug.nl/research/ggdc/data/penn-world-table)
- Classification of political regimes: from Cheibub, Gandhi, and Vreeland. 2010. “Democracy and Dictatorship Revisited.” Public Choice, vol. 143, no. 2-1, pp. 67-101. 
+World Bank GDP data and WDI 
-  [Polity IV Project: Political Regime Characteristics and Transitions, 1800-2013](http://www.systemicpeace.org/inscrdata.html)
-  [PITF State Failure Problem Set, 1955-2013](http://www.systemicpeace.org/inscrdata.html)
-  [Coups d'Etat, 1946-2013](http://www.systemicpeace.org/inscrdata.html)



3.Basic Trend Table
----------
>This part is still in progress.


4.Regression
----------
>This part is still in progress.


Contact Information
----------
+ Email: hsheng@pku.edu.cn
+ Weibo: [@盛浩Nihilist](http://weibo.com/u/1870340245)

<SMALL id="Com"><SUP>\*</SUP> *I should say I hate Economists who work without contract spirit, which technically means they don't pay you on time. That's common in China(mainland)'s Universities, and it sucks.* </SMALL>