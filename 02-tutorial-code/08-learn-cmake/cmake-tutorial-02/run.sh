set -x

build_dir=out/build

rm -rf $build_dir
mkdir -p $build_dir && cd $build_dir

cmake -S ../.. -B .

make

./b.out
