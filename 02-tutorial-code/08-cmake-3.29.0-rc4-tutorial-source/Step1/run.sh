set -x

build_dir=build

rm -rf $build_dir
mkdir -p $build_dir && cd $build_dir

cmake ..

make
./b.out 9
./b.out
