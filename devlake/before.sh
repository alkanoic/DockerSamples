openssl rand -base64 2000 | tr -dc 'A-Z' | fold -w 128 | head -n 1

# 作成したキーを.envのENCRYPTION_SECRETに追記する
