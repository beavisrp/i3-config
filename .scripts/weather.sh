#!/bin/sh

URL='http://www.accuweather.com/en/cz/prague/125594/weather-forecast/125594'

wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $12"°C "$14 }'| head -1 | awk '{print toupper($0)}'
