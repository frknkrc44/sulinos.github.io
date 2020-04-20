#!/bin/bash
build_page(){
	cat template/begin.html > $1.html
	cat src/$1.html >> $1.html
	cat template/end.html >> $1.html
}
#clear all html files
rm -f *.html
for i in index contact gallery
do
	build_page $i
done
