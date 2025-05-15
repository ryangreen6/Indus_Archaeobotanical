SELECT
  s.sample_id,
  COALESCE(d.dom_count, 0) AS domesticated_count
FROM samples AS s
LEFT JOIN (
  SELECT
    r.sample_id,
    COUNT(*) AS dom_count
  FROM relation_table AS r
  JOIN taxa AS t
    ON r.taxon_id = t.taxon_id
  WHERE t.domestication_status = 'domesticated'
  GROUP BY r.sample_id
) AS d
  ON s.sample_id = d.sample_id
ORDER BY s.sample_id