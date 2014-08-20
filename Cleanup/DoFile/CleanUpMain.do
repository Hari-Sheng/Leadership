drop _all
clear all
set more off
set trace on
cd D:\GitHub\Leadership\Cleanup\DoFile
sca testing = 0
*cd E:\GitHub\Leadership\Cleanup\DoFile

**********************************************************************
*Manual Manipulating
**Data -55 El Salvador-SJN: cen->countryn
**Data - 84 Isreal - YML: ���������д�����Ϣ������ʱû���֣���ȥ�����˸���ɽ��
**Data - 86 Jordan - LC: ������ year->1953
**�����ʽ�������ӣ�  
*			data- 103 bulgaria-sjn.xlsx 
*      data-104 czechoslovakia-sjn.xlsx 
*           data-129 australia-sjn.xlsx 
*         data-131 new zealand-sjn.xlsx 
*               data-52 canada-sjn.xlsx
*                data-79 china-sjn.xlsx
*
**2014-8-20
**Data -55 El Salvador-SJN-revised: cen->countryn, ���Ǵ�������ҭ 
**Data - 59 Honduras  - YML: countryn->Honduras, country->59
**Data - 158 Cequatorial guinea- LC- -> Data - 158 equatorial guinea- LC-
**Data - 83 iraq- YML�� no constituion nor elective law before 1958-[blank]

**********************************************************************

**********************************************************************
**************  I. Merge                       ***********************
**********************************************************************
cd ..\DoFile
do Merge.do

**********************************************************************
**************  II. Clean (and add source marker)*********************
**********************************************************************
cd ..\DoFile
do Clean.do

**********************************************************************
**************  III. Check                     ***********************
**********************************************************************
if testing{
	cd ..\DoFile
	do Check.do
}

**********************************************************************
**************  IV. Format                     ***********************
**********************************************************************
cd ..\DoFile
do Format.do

**********************************************************************
***************  V. Sample                     ***********************
**********************************************************************
if testing{
	cd ..\DoFile
	do Sample.do
}

**********************************************************************
***************  VI. Save                      ***********************
**********************************************************************
save ..\..\Merge\RawData\Leadership, replace
