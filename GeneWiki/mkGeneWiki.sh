#!/bin/sh
Version=0.0.29
Dump2018=wikidata-20180115-all
Dump2022=wikidata-20220630-all
Lines=100lines

Name=taxons
DumpFile=${Dump2018}
SchemaFormat=ShExC
DumpMode=OnlyMatched
DumpFormat=JSON
docker run -d -v /home/labra/dumps:/data -v /home/labra/wdsubConfig/shex:/shex -v /home/labra/generatedDumps:/generatedDumps wesogroup/wdsub:${Version} dump -o /generatedDumps/${Name}.ttl.gz -s /shex/${Name}.shex /data/${DumpFile}.json.gz --dumpFormat ${DumpFormat} --dumpMode ${DumpMode} --schemaFormat ${SchemaFormat}