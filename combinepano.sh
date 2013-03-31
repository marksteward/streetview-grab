#!/bin/bash

pushd $1

for y in {0..12}; do
  l="("
  for x in {0..25}; do
    l="$l x=$x,y=$y.jpg -resize 512"
  done
  l="$l +append )"
  c="$c $l"
done
convert $c -gravity center -append $1.jpg

popd
