## Geonomi italiani da Openstreetmap data ( italian_osm_geonames)

Check utilities ( on Linux 14.04) 


```
sudo apt-get install osmosis

sudo apt-get install osmctools

# Download latest osm italian data at geofabrik.de:

wget http://download.geofabrik.de/europe/italy-latest.osm.pbf

# Data extraction

osmosis --read-pbf italy-latest.osm.pbf \ 
--tf accept-nodes place=village,town,city,hamlet,neighbourhood,suburb,locality,isolated_dwelling \
--tf accept-ways place=village,town,city,hamlet,neighbourhood,suburb,locality,isolated_dwelling \
--tf accept-relations place=village,town,city,hamlet,neighbourhood,suburb,locality,isolated_dwelling \ 
--write-xml places_ita.osm  

# Data conversion

osmconvert places_ita.osm  --all-to-nodes --csv="@id @lon @lat place name" --csv-headline e --csv-separator=, -o=places_ita.csv 

osmconvert places_ita.osm  --csv="@id @lon @lat place name" --csv-headline  --csv-separator=, -o=places_ita_full.csv 

```

Two other source are here released in reusable format:

[A] Geonames matrix name for italy from http://www.geonames.org/data-sources.html licensed under a Creative Commons Attribution 3.0 License, see http://creativecommons.org/licenses/by/3.0/
The Data is provided "as is" without warranty or any representation of accuracy, timeliness or completeness.
in R rds  compressed format.

[B] Geo Toponimi toscani Regione Toscana - Cartografia Tecnica Regionale (CTR) https://publicdata.eu/dataset/regione-toscana_rt-ctr 
Format is csv.



##Licence OSM data

Don't forget attribution in reuse http://www.openstreetmap.org/copyright - http://wiki.osmfoundation.org/wiki/License

Datain files are licenced as "© OpenStreetMap contributors"  www.opendatacommons.org/licenses/odbl.

 
## Reference

[1] https://github.com/geometalab/osmaxx/wiki/Updating-the-planet---extracting-data
[2] http://stackoverflow.com/questions/24941936/create-a-csv-file-of-all-the-addresses-in-an-area-from-osm-file

