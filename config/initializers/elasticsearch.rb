Elasticsearch::Model.client =
  Elasticsearch::Client.new hosts: [
    {host: 'elasticsearch',
     port: '9200'}]
