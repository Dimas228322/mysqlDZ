SELECT *FROM catalogs;

SELECT
  prod.id, prod.name, prod.price, cat.name AS catalog
FROM products AS prod
LEFT JOIN catalogs AS cat ON prod.catalog_id = cat.id;