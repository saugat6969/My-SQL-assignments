
-- *** The Lost Letter ***
SELECT * FROM packages
WHERE from_address_id=(
    SELECT id FROM addresses
    WHERE address="900 Somerville Avenue"
   )
   AND to_address_id=(
      SELECT id FROM addresses
    WHERE address LIKE "2 Fin%"
);

-- *** The Devious Delivery ***
SELECT * FROM  packages
WHERE from_address_id IS NULL;

SELECT * FROM  addresses
WHERE id=5098;

SELECT * FROM  scans
WHERE package_id=(
  SELECT id FROM  packages
  WHERE from_address_id IS NULL

);


-- *** The Forgotten Gift ***
SELECT * FROM packages
WHERE fromaddress="109 Tileston Street"
AND to_address_id="728 Maple Place"

;

SELECT * FROM packages
WHERE from_address_id=(
    SELECT id FROM addresses
    WHERE address="109 Tileston Street"
   )
   AND to_address_id=(
      SELECT id FROM addresses
    WHERE address="728 Maple Place"
);


SELECT * FROM packages
WHERE FROM_address_id=(
      SELECT id FROM addresses
    WHERE address="109 Tileston Street"
);
SELECT * FROM  scans
WHERE package_id=9523;


SELECT  * FROM  drivers
WHERE id=(
  SELECT driver_id FROM  scans
  WHERE package_id=(
    SELECT id FROM packages
    WHERE FROM_address_id=(
        SELECT id FROM addresses
        WHERE address="109 Tileston Street")

     )
ORDER BY timestamp DESC
LIMIT 1
);
