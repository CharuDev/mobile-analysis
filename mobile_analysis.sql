SELECT * FROM mobile.`mobile analysis`;
/* check mobile feature and brand lisst*/
SELECT Phone_name,Price FROM mobile.`mobile analysis`;

/* price of 5 most expensive phone*/
SELECT Brands FROM mobile.`mobile analysis` order by Price desc limit 5;

/* price of 5 most chepest phone*/
SELECT Brands FROM mobile.`mobile analysis` order by Price asc limit 5;

/* top 5 samsung phone with price and all feature*/

SELECT Phone_name,Price FROM mobile.`mobile analysis` where Brands='Samsung' order by Price desc limit 5;

/*list top 5 lower price android phone*/
SELECT Phone_name,Price,Brands FROM mobile.`mobile analysis` where Operating_System_Type='Android' order by Price asc limit 5;

/* top 5 high price android phone*/
SELECT Phone_name,Price,Brands FROM mobile.`mobile analysis` where Operating_System_Type='Android' order by Price desc limit 5;

/*list top 5 high price ios phone*/
SELECT Phone_name,Price,Brands FROM mobile.`mobile analysis` where Operating_System_Type='Ios' order by Price desc limit 5;

/*list top 5 high LOWER ios phone*/
SELECT Phone_name,Price,Brands FROM mobile.`mobile analysis` where Operating_System_Type='Ios' order by Price asc limit 5;

/* total price associated with the brand name*/

SELECT sum(Price),Brands FROM mobile.`mobile analysis` group by Brands;

