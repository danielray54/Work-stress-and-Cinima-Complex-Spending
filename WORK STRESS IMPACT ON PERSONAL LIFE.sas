/*Create Data Set for Analysis*/ 
DATA StressEmp; 
	/*Create 2 Variables - Stress (Y/N) & Percentage*/ 
	INPUT Stress$ Per; 
	/*Put Values in Variables*/ 
	DATALINES; 
	YES 68 
	NO 32 
	; 
RUN; 
/*Call the FREQ Procedure */ 
/*Using ORDER = DATA to get the YES value*/ 
PROC FREQ DATA=StressEmp ORDER=DATA; 
	/*Specifying the data is Binomial*/ 
	WEIGHT Per; 
	TABLES Stress / BINOMIAL; 
RUN;