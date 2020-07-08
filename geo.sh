#!/bin/bash
from=$1
size=$2
latitude=$3
longtitude=$4
distance=$5
city=$6

echo from = $from 
echo size = $size 
echo latitude = $latitude 
echo longtitude = $longtitude
echo distance = $distance 
echo city = $city

time=0
count=10
info=""

for ((i=1;i<=$count;i++)) ; do

info=`curl -s -XGET -u 'xxxx:xxxx' 'http://xxxx:9200/xxxx/_search' -H 'Content-Type: application/json' -d'
{
    "from" : "'$from'",
    "size" : "'$size'",
    "_source": false,
    "query": {
        "bool": {
            "must": {
                "match_phrase" : {
                    "city" : "'$city'" 
                }
            },
            "filter": {
                "geo_distance": {
                    "distance": "'$distance'",
                    "geo": {
                        "lat": "'$latitude'",
                        "lon": "'$longtitude'"
                    }
                }
            }
        }
    },
    "sort": [{
      "_geo_distance": {
        "geo": {
          "lat": "'$latitude'",
          "lon": "'$longtitude'"
        },
        "order": "asc",
        "unit": "m",
        "distance_type": "arc"
      }
    }
  ]
}

'`
currentTime=`echo $info | grep -o -E '\"took\":\d+' | awk -F ':' '{printf $2}'`
echo 第 $i 次：延时： $currentTime ms
time=$[time+currentTime]
done

echo average RT : $[time/count] ms
echo total count: `echo $info | grep -o -E '\"hits\":{\"total\":\d+' | awk -F ':' '{printf $3}'`

