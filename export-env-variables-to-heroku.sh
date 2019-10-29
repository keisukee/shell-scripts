#!/bin/sh

### TODO ###
# KEY: dotenvファイルのKEYを指定してください
# value: dotenvファイルのVALUEを指定してください(値は""で囲う)
# APPLICATION_NAME: Herokuで設定したアプリケーション名を指定してください

# 設定したい変数の数だけ行を追加してください
############

heroku config:add KEY="value" –app APPLICATION_NAME
