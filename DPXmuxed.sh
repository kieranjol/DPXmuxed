#!/bin/bash -x

#http://askubuntu.com/a/37194

echo "filename without extension of first frame in the sequence?"
read "num";
opt=(-start_number $num)

echo "frame rate of sequence?"
read "fr";
opt+=(-framerate $fr)

#do if statement
echo "codec? Enter v210 or pro res"
read "codec"
#http://stackoverflow.com/a/15546300/2188572 for renaming input

#ffmpeg -start_number 867116 -framerate 24 -i /Volumes/Stardom/glitch\ tests/untitled\ folder/%06d.dpx -vf "scale=720:576, crop=in_w:in_h-32" -c:v v210 /Volumes/Stardom/glitch\ tests/untitled\ folder/ffmpegv210reseiz24cro32pxcrope.mov

#possibly do if statement for 5/6/7 characters. might be the simplest way?


ffmpeg "${opt[@]}" -i "$1/%06d.dpx" -c:v $codec "$1/muxed.mov"