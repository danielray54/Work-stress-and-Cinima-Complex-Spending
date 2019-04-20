/*Create Data Set for Analysis*/ 
DATA CinemaSpend; 
	/*Create a variable - Amount*/ 
	INPUT Amount; 
	/*Put Values in Variables*/ 
	DATALINES; 
	3.85 
	5.28 
	6.74 
	1.96 
	4.85 
	4.28 
	6.73 
	4.56 
	5.45 
	8.35 
	10.50 
	4.25 
	; 
RUN; 
/*Call the TTEST Procedure */ 
PROC TTEST DATA=CinemaSpend; 
/*Specifying the Variable*/ 
	VAR Amount; 
RUN;

