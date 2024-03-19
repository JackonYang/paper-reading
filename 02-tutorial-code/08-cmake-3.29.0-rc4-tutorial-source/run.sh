set -x

# hint, step2: bash run.sh 2 -DUSE_MYMATH=OFF

build_dir=build

rm -rf $build_dir
mkdir -p $build_dir && cd $build_dir

cmake ../Step$1 "${@:2}"

make
./b.out 9
./b.out
