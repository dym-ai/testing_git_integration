# -------------------------------------------------------------------------------- NOTEBOOK-CELL: CODE
# -*- coding: utf-8 -*-
import dataiku
import pandas as pd, numpy as np
from dataiku import pandasutils as pdu

# Read recipe inputs
asset_modelisation_table = dataiku.Dataset("Asset_modelisation_table")
asset_modelisation_table_df = asset_modelisation_table.get_dataframe()

# -------------------------------------------------------------------------------- NOTEBOOK-CELL: CODE
# Compute recipe outputs from inputs
python_output_df = asset_modelisation_table_df # For this sample code, simply copy input to output

# -------------------------------------------------------------------------------- NOTEBOOK-CELL: CODE

# Write recipe outputs
python_output = dataiku.Dataset("python_output")
python_output.write_with_schema(python_output_df)