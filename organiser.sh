#!/bin/bash

# Concatenate split zip files into a single zip file
cat india_pincodes.shp.z01 india_pincodes.shp.z02 india_pincodes.shp.z03 india_pincodes.shp.z04 india_pincodes.shp.z05 india_pincodes.shp.zip > india_pincodes_full.shp.zip

# Unzip the combined zip file
unzip india_pincodes_full.shp.zip

# Unzip any other related zip files (if necessary)
unzip india_pincodes.cpg.zip
unzip india_pincodes.prj.zip
unzip india_pincodes.sbx.zip
unzip india_pincodes.dbf.zip
unzip india_pincodes.sbn.zip
unzip india_pincodes.shx.zip

# Delete all zip files
rm -f *.zip *.z0*

# Converting to GeoJSON
# ogr2ogr -f GeoJSON india_pincodes_full.geojson india_pincodes_full.shp
