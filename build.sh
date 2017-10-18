flags="-Wall -Werror -Wno-write-strings -Wno-unused-variable -Wno-sign-compare -std=gnu++11 -fno-rtti -fno-exceptions -DHANDMADE_INTERNAL=1 -DHANDMADE_SLOW=1 -DHANDMADE_SDL=1"
varsdl=`sdl2-config --cflags --libs`
libpath='$ORIGIN/sdl2-64/lib'
mkdir -p build
pushd build
c++ $flags ../sdl_handmade.cpp $varsdl -o handmadehero -g -Wl,-rpath=$libpath
./handmadehero
popd
