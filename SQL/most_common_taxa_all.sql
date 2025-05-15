


SELECT
  relation_table.taxon_id,
  taxa.scientific_name,
  taxa.common_name,
  COUNT(relation_table.taxon_id) AS occurrence_count
FROM relation_table
JOIN taxa
  ON relation_table.taxon_id = taxa.taxon_id
WHERE taxa.domestication_status = 'domesticated'
GROUP BY
  relation_table.taxon_id,
  taxa.scientific_name,
  taxa.common_name
ORDER BY
  occurrence_count DESC
LIMIT 10;





