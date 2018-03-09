-- 1)  Store sales for Division 11...  
-- join the tables to bring back 1 row and display the sales summary for division 11.

 SELECT concat('$',format(sum(storesales.Sales),2)) as 'Cincinnati Division Office Store Sales'
from division, store, storesales
where storeID= store.id
and store.divisionid = division.id
and division.id=1; 

-- 2)  Store sales summary for all divisions...  
-- 2 rows with the sales summed for each division.

select division.DivisionName, concat('$',format(sum(storesales.sales),2)) as 'Sales'
from division, store, storesales
where storeID = store.id
and store.divisionID = division.id
group by division.divisionname;

-- extra select statement that returns sales of individual stores(not checked for accuracy, 
-- but seems right or close

select store.StoreName, concat('$', format(sum(storesales.sales), 2)) as 'Division Sales'
from division, store, storesales
where storesales.StoreID = store.id
and store.DivisionID = division.id
group by store.StoreName;