


SELECT
  samples.*,
  COALESCE(domesticated_counts.domesticated_count, 0) AS domesticated_count
FROM samples
LEFT JOIN (
  SELECT
    relation_table.sample_id AS sample_id,
    COUNT(*) AS domesticated_count
  FROM relation_table
  JOIN taxa
    ON relation_table.taxon_id = taxa.taxon_id
  WHERE taxa.domestication_status = 'domesticated'
  GROUP BY relation_table.sample_id
) AS domesticated_counts
  ON samples.sample_id = domesticated_counts.sample_id
WHERE COALESCE(domesticated_counts.domesticated_count, 0) > 0
ORDER BY samples.sample_id;





