if [ ! -d u-boot ]; then  git clone --depth 1 https://github.com/redstar/CI20_u-boot.git; fi

export ARCH=mips CROSS_COMPILE=mipsel-linux-gnu-

cd u-boot
[ -f .config ] || make ci20_mmc
make -j$(nproc)
