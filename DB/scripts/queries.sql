/*		ADMIN		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='ADMIN';
*/
DESCRIBE	ADMIN;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'ADMIN';
SELECT * FROM ADMIN;

/*		AVAIL		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='AVAIL';
*/
DESCRIBE	AVAIL;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'AVAIL';
SELECT * FROM AVAIL;

/*		CCARD		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='CCARD';
*/
DESCRIBE	CCARD;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'CCARD';
SELECT * FROM CCARD;

/*		CUSTOMER			
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='CUSTOMER';
*/
DESCRIBE	CUSTOMER;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'CUSTOMER';
SELECT * FROM CUSTOMER;

/*		DEPARTMENT		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='DEPARTMENT';
*/
DESCRIBE	DEPARTMENT;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'DEPARTMENT';
SELECT * FROM DEPARTMENT;

/*		EMPLOYEE		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='EMPLOYEE';
*/
DESCRIBE	EMPLOYEE;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'EMPLOYEE';
SELECT * FROM EMPLOYEE;

/*		ITEM		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='ITEM';
*/
DESCRIBE	ITEM;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'ITEM';
SELECT * FROM ITEM;

/*		PROCURE		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='PROCURE';
*/
DESCRIBE	PROCURE;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'PROCURE';
SELECT * FROM PROCURE;

/*		PURCHASE		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='PURCHASE';
*/
DESCRIBE	PURCHASE;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'PURCHASE';
SELECT * FROM PURCHASE;

/*		RETAIL		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='RETAIL';
*/
DESCRIBE	RETAIL;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'RETAIL';
SELECT * FROM RETAIL;

/*		SUPPLIER		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='SUPPLIER';
*/
DESCRIBE	SUPPLIER;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'SUPPLIER';
SELECT * FROM SUPPLIER;

/*		USAGE		
SELECT	column_name, data_type
FROM	user_tab_columns
WHERE	table_name='USAGE';
*/
DESCRIBE	USAGE;
SELECT	X.constraint_name, X.constraint_type, X.status, X.validated, X.search_condition, Y.column_name, Y.position
FROM	user_constraints X, user_cons_columns Y
WHERE	X.constraint_name = Y.constraint_name
AND	X.table_name = 'USAGE';
SELECT * FROM USAGE;
