namespace :item do
  desc 'itemの内容をElasticSearchにインポートする'
  task import: :environment do
    Item.__elasticsearch__.create_index!
  end
end
