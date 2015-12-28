# Create italian geonames 

On linux  14.04 check the apps before to perform any tasks.

# sudo apt-get install osmosis

# sudo apt-get install osmctools

# wget https://github.com/MorbZ/OsmPoisPbf/releases/download/v1.1/osmpois.jar 

# download latest osm italy data

wget http://download.geofabrik.de/europe/italy-latest.osm.pbf

# data extract 

osmosis --read-pbf italy-latest.osm.pbf --tf accept-nodes place=village,town,city,hamlet,neighbourhood,suburb,locality,isolated_dwelling --tf accept-ways place=village,town,city,hamlet,neighbourhood,suburb,locality,isolated_dwelling --tf accept-relations place=village,town,city,hamlet,neighbourhood,suburb,locality,isolated_dwelling --write-xml places_ita.osm  

# data convert

osmconvert places_ita.osm  --all-to-nodes --csv="@id @lon @lat place name" --csv-headline e --csv-separator=, -o=places_ita.csv 

osmconvert places_ita.osm  --csv="@id @lon @lat place name" --csv-headline  --csv-separator=, -o=places_ita_full.csv 


# Don't forget attribution http://www.openstreetmap.org/copyright - http://wiki.osmfoundation.org/wiki/License

# data cointanined in files are licenced as "© OpenStreetMap contributors"  www.opendatacommons.org/licenses/odbl.

 
#Reference

[1] https://github.com/geometalab/osmaxx/wiki/Updating-the-planet---extracting-data
[2] http://stackoverflow.com/questions/24941936/create-a-csv-file-of-all-the-addresses-in-an-area-from-osm-file

