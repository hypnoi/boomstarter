remote_file "/tmp/elasticsearch-1.1.1.deb" do
  source "https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.deb"
  mode 0644
end

dpkg_package "elasticsearch" do
  source "/tmp/elasticsearch-1.1.1.deb"
  action :install
end
