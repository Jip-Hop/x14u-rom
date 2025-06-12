# X14U ROM

| Phrase                      | Description                                                                                              |
|-----------------------------|----------------------------------------------------------------------------------------------------------|
| X14U                        | Xiaomi 14 Ultra smartphone released 22 February 2024                                                     |
| Qualcomm Snapdragon 8 Gen 3 | High-end mobile SoC used in X14U                                                                         |
| SM8650                      | Identifier for Qualcomm Snapdragon 8 Gen 3                                                               |
| Lanai                       | Codename for Qualcomm Snapdragon 8 Gen 3 (part of the  pineapple family)                                 |
| CodeLinaro Android (CLO)    | Qualcomm maintained fork of Android optimized for Qualcomm devices, previously known as CodeAurora (CAF) |


## Setup build env

Use [Firebase Studio](https://studio.firebase.google.com) and choose an Android Studio Cloud workspace.

### Install packages

```sh
sudo apt-get update
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev libc6-dev-i386 x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig repo -y
```

### Repo init

```sh
mkdir clo
cd clo

repo init -u https://github.com/Jip-Hop/x14u-rom.git -b main
```