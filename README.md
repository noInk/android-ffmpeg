android-ffmpeg
==============

a system for building latest ffmpeg binaries for Android


This is a new android-ffmpeg project.
The result is a single statically linked 'ffmpeg' binary with x264 support. 


Setup
-----
You will need the Android NDK version r9 or later to use this script.

<code>
git clone https://github.com/xXskitcatXx/android-ffmpeg.git

cd android-ffmpeg
git submodule init
git submodule update

NDK_BASE=/path/to/android-ndk ./configure_make_everything.sh

example

NDK_BASE=$NDKROOT ./configure_make_everything.sh

</code>

That should give you a binary file in data/out/bin/ which is the only file
you should need.


Customizing
-----------

If you want to change which coders, decoders, muxers, filters, etc that are
included, edit configure_ffmpeg.sh and add/substract what you want.


Sources of inspiration
----------------------
https://github.com/guardianproject/android-ffmpeg
https://bitbucket.org/trovao/ffmpeg-android/overview
