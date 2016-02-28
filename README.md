# Niagara Open Data

## Open Data Sets

* Canada Open Government: http://open.canada.ca/en

* Ontario: https://www.ontario.ca/open-data

* Niagara Region: http://www.niagararegion.ca/government/opendata/ 

* Niagara Falls: https://www.niagarafalls.ca/services/open/data/ 

* Welland: http://www.welland.ca/open/Opendata.asp 

### Other Data Resources

* City Data: http://www.city-data.com/canada/

* Open Geospatial Data: http://www.brocku.ca/maplibrary/digital/web-resources.php

***

## Helpful Tools & Resources

**Geographic Data Formats:** 

* [KML](https://developers.google.com/kml/) 
* [GeoJSON](http://geojson.org/)
* [TopoJSON](https://en.wikipedia.org/wiki/GeoJSON#TopoJSON)

**Popular Data Formats:**

* [CSV](https://en.wikipedia.org/wiki/Comma-separated_values)
* [TSV](https://en.wikipedia.org/wiki/Tab-separated_values)
* [JSON](https://en.wikipedia.org/wiki/JSON)
* [XML](https://en.wikipedia.org/wiki/XML)

### Using GitHub to Display Data

GitHub can be an excellent tool for sharing and visualizing data of various types.

* CSV/TSV: View and search data in friendly display. [See bus stop CSV example](https://github.com/NiagaraOpenData/opendata/blob/master/Public-Transit/niagara-region-stops.csv)

* GeoJSON: Display Map. [See bus stop GeoJSON example](https://github.com/NiagaraOpenData/opendata/blob/master/Public-Transit/niagara-region-stops.geojson)

### Viewing Geographic Data

**Tools for displaying KML:**

* KML Displayer: http://display-kml.appspot.com

**Tools for displaying GeoJSON**

* http://geoJSON.io
* http://jansanchez.com/geojson-viewer/

**Other tools**

* http://dev.openlayers.org/examples/vector-formats.html

### Tools For Converting Data

Many tools exist that can convert data into desired formats.

#### Online Tools

**CSV**: This site http://www.convertcsv.com, has many tools for converting all kind of data formats to and from CSV.

**CSV to GeoJSON**: http://togeojson.com


#### Scripts & Libraries

**CSV to GeoJSON** (nodeJS module): http://dev.openlayers.org/examples/vector-formats.html

**KML to CSV** (ruby script):

See scripts folder in this repo: https://github.com/NiagaraOpenData/opendata/blob/master/_scripts/kml2csv

Run this command:

```
ruby kml2csv kmlfile.xml > newfile.csv
```

**JSON to CSV** (PHP): https://github.com/danmandle/JSON2CSV
