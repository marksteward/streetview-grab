#!/bin/bash

mkdir $1
pushd $1

for y in {0..12}; do
  for x in {0..25}; do
    wget -nv --no-check-certificate -O "x=$x,y=$y.jpg" "https://cbks0.google.com/cbk?output=tile&zoom=5&x=$x&y=$y&cb_client=maps_sv&fover=2&onerr=3&renderer=spherical&v=4&panoid=$1"
  done
done

popd
