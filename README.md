# X14U ROM

| Phrase                      | Description                                                                                              |
|-----------------------------|----------------------------------------------------------------------------------------------------------|
| X14U                        | Xiaomi 14 Ultra smartphone released 22 February 2024                                                     |
| Qualcomm Snapdragon 8 Gen 3 | High-end mobile SoC used in X14U                                                                         |
| SM8650                      | Identifier for Qualcomm Snapdragon 8 Gen 3                                                               |
| Lanai                       | Codename for Qualcomm Snapdragon 8 Gen 3 (part of the  pineapple family)                                 |
| CodeLinaro Android (CLO)    | Qualcomm maintained fork of Android optimized for Qualcomm devices, previously known as CodeAurora (CAF) |


## Setup build env

```sh
docker build -t clo .
docker run --name clo -it --rm -v clo:/home/ubuntu clo bash
```

## Repo init

```sh
mkdir clo
cd clo

repo init --depth=1 -u https://github.com/Jip-Hop/x14u-rom.git -b main
```

## Repo sync

```sh
repo sync -c -j$(nproc --all) --no-clone-bundle --no-tags
```

## Set up environment

```sh
. build/envsetup.sh
```

## Choose a target

```sh
export TARGET_RELEASE=trunk_staging
build_build_var_cache
lunch
```

## Build

```sh
make -j$(nproc --all)
```