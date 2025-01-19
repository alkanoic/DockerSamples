# テーマを追加
# https://github.com/farend/redmine_theme_farend_fancy
git clone https://github.com/farend/redmine_theme_farend_fancy.git data/themes/farend_fancy

# プラグインを追加
git clone https://github.com/onozaty/redmine-view-customize.git data/plugins/view_customize

# Redmineを起動
docker compose up -d

# Redmineが起動するまで待つ
echo "Wait for Redmine to start"
sleep 60

# プラグインのインストール
CONTAINER_NAME=redmine-redmine-1
docker exec -it ${CONTAINER_NAME} bundle install --without development test
docker exec -it ${CONTAINER_NAME} bundle exec rake redmine:plugins:migrate RAILS_ENV=production

docker restart ${CONTAINER_NAME}
