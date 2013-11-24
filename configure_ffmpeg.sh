#!/bin/bash
pushd `dirname $0`
. settings.sh

if [[ $DEBUG == 1 ]]; then
  echo "DEBUG = 1"
  DEBUG_FLAG="--disable-stripping"
fi



pushd ffmpeg

./configure \
$DEBUG_FLAG \
--arch=arm \
--cpu=cortex-a8 \
--target-os=linux \
--enable-runtime-cpudetect \
--prefix=$prefix \
--enable-pic \
--disable-shared \
--enable-static \
--cross-prefix=$NDK_TOOLCHAIN_BASE/bin/$NDK_ABI-linux-androideabi- \
--sysroot="$NDK_SYSROOT" \
--extra-cflags="-I../x264 -mfloat-abi=softfp -mfpu=neon" \
--extra-ldflags="-L../x264" \
\
--enable-version3 \
--enable-gpl \
\
--enable-yasm \
\
--enable-decoders \
--enable-encoders \
--enable-muxers \
--enable-demuxers \
--enable-parsers \
--enable-protocols \
--enable-filters \
--enable-avresample \
\
--disable-indevs \
--enable-indev=lavfi \
--disable-outdevs \
\
--enable-hwaccels \
--enable-pthreads \
\
--enable-ffmpeg \
--disable-ffplay \
--disable-ffprobe \
--disable-ffserver \
\
--enable-nonfree \
--enable-version3 \
--enable-avresample \
--enable-demuxer=rtsp \
--enable-muxer=rtsp \
--enable-libx264 \
--enable-encoder=libx264 \
--enable-decoder=h264 \
--enable-protocol=rtp \
--enable-hwaccels \
--enable-zlib \
--enable-libx264 \
--enable-zlib \
--enable-muxer=md5

popd; popd


