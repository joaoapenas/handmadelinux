varsdl=`sdl2-config --cflags --libs`
mkdir -p build
pushd build
c++ ../sdl_handmade.cpp $varsdl -o handmadehero -g
./handmadehero
popd
