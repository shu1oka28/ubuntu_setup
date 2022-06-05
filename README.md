# ubuntu_setup

Ubuntuをセットアップする


|ファイル名|内容|
|--------|----|
|`install.sh`|何に使うにしても必要だと思っているもの|
|`install_docker.sh`|dockerとdocker-composeのインストール

## install.sh

利用例

```bash
sudo ./install.sh
```

インストールされるプログラム
- git
- vim 
- gcc
- make
- perl
- python3-pip
- 日本語入力対応（mozc-utils-gui fcitx-config-gtk）
- VSCode

## install_docker.sh

利用例
```
sudo ./install_docker.sh
sudo docker --version
sudo docker-compose --version
```

インストールされるプログラム
- docker
- docker-comopse

docker-composeは以下にバージョン一覧があります。
このプログラムでは、2.6.0がインストールされます。

https://github.com/docker/compose/releases