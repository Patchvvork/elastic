# Modify the cluster

# Import the Elasticsearch yaml config file : with the new cluster name

cookbook_file "/etc/elasticsearch/elasticsearch.yml" do
	source "new-elasticsearch.yml"
	mode "0644"
end

# Restart the Elasticsearch service

service "elasticsearch" do
	action :restart
end
