# ./waf configure --cross-compile-android --lightweight= --fft=KISS --prefix=~/Repos/essentia/dist


TARGET=armv7a-linux-androideabi21

# nnls
cd /home/yumyum/Repos/essentia/src/3rdparty/nnls
/home/yumyum/Android/Sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -target $TARGET -c -fPIC nnls.c
cp /home/yumyum/Repos/essentia/src/3rdparty/nnls/nnls.o /home/yumyum/Repos/essentia/build/src/3rdparty/nnls/nnls.c.1.o

# kiss_fft
cd /home/yumyum/Repos/essentia/src/3rdparty/kiss_fft130
/home/yumyum/Android/Sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -target $TARGET -c -fPIC kiss_fft.c
cp /home/yumyum/Repos/essentia/src/3rdparty/kiss_fft130/kiss_fft.o /home/yumyum/Repos/essentia/build/src/3rdparty/kiss_fft130/kiss_fft.c.1.o

# kiss_fftr
cd /home/yumyum/Repos/essentia/src/3rdparty/kiss_fft130/tools
/home/yumyum/Android/Sdk/ndk/22.0.7026061/toolchains/llvm/prebuilt/linux-x86_64/bin/clang -target $TARGET -c -fPIC -I.. kiss_fftr.c
cp /home/yumyum/Repos/essentia/src/3rdparty/kiss_fft130/tools/kiss_fftr.o /home/yumyum/Repos/essentia/build/src/3rdparty/kiss_fft130/tools/kiss_fftr.c.1.o


