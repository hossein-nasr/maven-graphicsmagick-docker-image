#!/usr/bin/env bash
set -e
name=GraphicsMagick
namever=$name-1.3.31
ext=.tar.gz
downloaded=$name$ext
apt-get update
apt-get install -y g++ build-essential libbz2-dev libfreetype6-dev ghostscript gsfonts libjbig-dev libjpeg-dev \
     liblcms2-dev libltdl-dev liblzma-dev libpng-dev libtiff5-dev libwebp-dev libwmf-dev libx11-dev libxml2-dev \
     zlib1g-dev libxext-dev libsm-dev
if [[ -f ${downloaded} ]]
then
    echo using existing ${downloaded}
else
    wget ftp://ftp.graphicsmagick.org/pub/GraphicsMagick/1.3/$namever$ext -O $downloaded
fi
rm $namever -Rf
tar -zxf $downloaded
cd $namever
./configure
make
make install
cd ..
rm $namever -Rf
