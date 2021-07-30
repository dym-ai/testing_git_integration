SELECT 
    "usage_data_by_Asset_prepared"."Asset" AS "Asset",
    "usage_data_by_Asset_prepared"."Time_begin_exploitation" AS "Time_begin_exploitation",
    "usage_data_by_Asset_prepared"."Initial_km" AS "Initial_km",
    "usage_data_by_Asset_prepared"."nb_km" AS "nb_km",
    "maintenance_failures_copy"."failure_bin" AS "failure_bin"
  FROM "DKU_PREDICTIVE_MAINTENANCE_usage_data_by_asset_prepared" "usage_data_by_Asset_prepared"
  LEFT JOIN "DKU_PREDICTIVE_MAINTENANCE_maintenance_failures_copy" "maintenance_failures_copy"
    ON "usage_data_by_Asset_prepared"."Asset" = "maintenance_failures_copy"."Asset"