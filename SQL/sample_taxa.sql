SELECT
  s.sample_id,
  r.taxon_id,
  t.scientific_name,
  t.common_name,
  t.domestication_status
FROM samples AS s
JOIN relation_table AS r
  ON s.sample_id = r.sample_id
JOIN taxa AS t
  ON r.taxon_id = t.taxon_id
WHERE s.sample_id = ?
ORDER BY t.taxon_id;