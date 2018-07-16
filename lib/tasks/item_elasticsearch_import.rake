namespace :item do
  desc 'itemの内容をElasticSearchにインポートする'
  task import: :environment do
    puts 'DAUを取得します'
    Item.import
    puts 'DAUの取得完了'
  end
end
