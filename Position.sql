/*  SQL  */
select id, name, POSITION(',' in characteristics) as comma from monsters order by comma
