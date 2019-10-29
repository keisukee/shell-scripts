#!/bin/bash
# macが重いときに行う。CPUやらメモリやらのキャッシュなどを削除し、軽量にする。dockerのimageやコンテナ削除なども

docker ps -aq | xargs docker rm # docker コンテナを一斉削除d
docker images -aq | xargs docker rmi # docker image イメージを一斉削除
sudo purge # メモリ解放
du -sx / # ディスクの使用量をディレクトリごとに集計して表示するコマンド。チェック処理中に開放し忘れてた処理を開放するらしいので結果メモリの開放になる模様。アクティビティモニターでも確認できる
sudo update_dyld_shared_cache -force # アプリとOSのキャッシュのアップデート
sudo kextcache -system-caches # ドライバキャッシュのクリア
sudo kextcache -system-prelinked-kernel # カーネルキャッシュの更新
sudo rm -rf ~/Library/Caches # キャッシュの削除
brew cleanup # Homebrewのキャッシュ削除
killall Finder # finder再起動
