SELECT p.*
FROM heloposts AS p
INNER JOIN helo AS h
ON p.hp_user_id = any(h.friends)
WHERE h.user_id = $1;