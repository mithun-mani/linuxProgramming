#!/bin/bash

while read line; do
  title=`expr "$line" : ".*aria-label=\"\(.*\) by .*"`
  echo $title >> titles.txt
  view=`expr "$line" : ".*seconds* \(.*\)\" title.*"`
  echo $view >> views.txt
  duration=`expr "$line" : ".*ago \([0-9]*.*\) [0-9]*.* views"`
  echo $duration >> duration.txt
  upload=`expr "$line" : ".* by .* \([0-9]* .* ago\) [0-9].* "`
  echo $upload >> upload_date.txt
  user=`expr "$line" : ".*by \(.*\) [0-9].*ago"`
  echo $user >> users.txt
done < clips.txt

#grep commands
#ggrep -P -o '(?=aria-label=").*(?= by.aria-label)' clips.txt > titles2.txt
#ggrep -P -o '(aria-label\K(.*)[0-9]\K(.*)seconds?\K(.*)).*(?=" title)' clips.txt
#ggrep -P -o '(aria-label\K(.*) by \K(.*)[0-9]\K(.*) ago\K(.*)).*(?= [0-9].* views)' clips.txt > duration2.txt
#ggrep -P -o '(aria-label\K(.*) by \K(.*) \K(.*))[0-9]* .* ago(?= [0-9].* )' clips.txt > upload_date2.txt
#ggrep -P -o '(aria-label\K(.*) by \K(.*)).*(?= [0-9].*ago)' clips.txt > users2.txt

#sed commands
#sed -n ’s/<\/ytd-thumbnail>.*aria-label=\”\(.*\) by \(.*\) \([0-9].*\) ago \(.*\) \([0-9]views.*\)\” .*/\"\1\",\"\2\",\"\3\",\"\4\",\"\5\"/p' clips.txt > table3.csv
