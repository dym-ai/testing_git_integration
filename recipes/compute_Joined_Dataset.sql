SELECT 
    "maintenance_failures_copy"."Asset" AS "Asset",
    "maintenance_failures_copy"."failure_bin" AS "failure_bin",
    "usage_data_by_Asset_prepared"."Time_begin_exploitation" AS "Time_begin_exploitation",
    "usage_data_by_Asset_prepared"."Initial_km" AS "Initial_km",
    "usage_data_by_Asset_prepared"."nb_km" AS "nb_km",
    "maintenance_part_consumption_by_Reason"."R044_Quantity_sum" AS "R044_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R064_Quantity_sum" AS "R064_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R119_Quantity_sum" AS "R119_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R193_Quantity_sum" AS "R193_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R364_Quantity_sum" AS "R364_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R396_Quantity_sum" AS "R396_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R417_Quantity_sum" AS "R417_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R446_Quantity_sum" AS "R446_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R565_Quantity_sum" AS "R565_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R575_Quantity_sum" AS "R575_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R606_Quantity_sum" AS "R606_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R707_Quantity_sum" AS "R707_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R782_Quantity_sum" AS "R782_Quantity_sum",
    "maintenance_part_consumption_by_Reason"."R783_Quantity_sum" AS "R783_Quantity_sum"
  FROM "DKU_PREDICTIVE_MAINTENANCE_maintenance_failures_copy" "maintenance_failures_copy"
  LEFT JOIN "DKU_PREDICTIVE_MAINTENANCE_usage_data_by_asset_prepared" "usage_data_by_Asset_prepared"
    ON "maintenance_failures_copy"."Asset" = "usage_data_by_Asset_prepared"."Asset"
  LEFT JOIN "DKU_PREDICTIVE_MAINTENANCE_maintenance_part_consumption_by_reason" "maintenance_part_consumption_by_Reason"
    ON "maintenance_failures_copy"."Asset" = "maintenance_part_consumption_by_Reason"."Asset"