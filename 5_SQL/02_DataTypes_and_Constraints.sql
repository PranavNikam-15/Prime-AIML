/*

Data Types :-

|  DATATYPE  |  DESCRIPTION                                                                     |  USAGE        |
| ---------- | -------------------------------------------------------------------------------- | ------------- |
|  CHAR      | String (0–255), stores  fixed-length  characters                                 |  CHAR(50)     |
|  VARCHAR   | String (0–255), stores characters  up to given length                            |  VARCHAR(50)  |
|  BLOB      | String (0–65535), stores  binary large objects                                   |  BLOB         |
|  INT       | Integer value from  -2,147,483,648 to 2,147,483,647  (-2^31 to 2^31−1)           |  INT          |
|  TINYINT   | Integer value from  -128 to 127                                                  |  TINYINT      |
|  BIGINT    | Integer value from  -9,223,372,036,854,775,808  to  9,223,372,036,854,775,807    |  BIGINT       |
|  BIT       | Stores  x-bit values , where x ranges from  1 to 64                              |  BIT(2)       |
|  FLOAT     | Decimal number with  precision up to 23 digits                                   |  FLOAT        |
|  DOUBLE    | Decimal number with  precision from 24 to 53 digits                              |  DOUBLE       |
|  BOOLEAN   | Stores boolean values  0 (FALSE) or 1 (TRUE)                                     |  BOOLEAN      |
|  DATE      | Date in format  YYYY-MM-DD , range:  1000-01-01 to 9999-12-31                    |  DATE         |
|  YEAR      | Year in  4-digit format , range:  1901 to 2155                                   |  YEAR         |

*/


-- Create Table :-

/*

CREATE TABLE table_name (
	column_1 datatype [constraints],
    column_2 datatype [constraints],
    column_3 datatype [constraints],
    ...
)

*/

USE college;
CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(60) UNIQUE NOT NULL,
    age INT,
    status VARCHAR(20) DEFAULT 'Active',
    CONSTRAINT check_age CHECK (age >= 13)
);


/*

Constraints :-
- Constraints are used to specify rules for the data in a table
- If there is any violation between the constraint and the data action, the action is aborted


| CONSTRAINT     | DESCRIPTION                                         | 
| -------------- | --------------------------------------------------- |
| NOT NULL       | Prevents NULL values in a column                    | 
| UNIQUE         | Ensures all values in a column are unique           |
| PRIMARY KEY    | Uniquely identifies each record (NOT NULL + UNIQUE) |
| FOREIGN KEY    | Enforces relationship between tables                |
| CHECK          | Restricts values based on a condition               |
| DEFAULT        | Assigns a default value if none is provided         |
| AUTO_INCREMENT | Automatically generates sequential numeric values   |

*/