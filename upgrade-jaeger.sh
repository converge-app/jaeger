#!/bin/bash

helm install incubator/jaeger --name jaeger --set provisionDataStore.cassandra=false  --set provisionDataStore.elasticsearch=false \
        --set storage.type=elasticsearch \
	--set storage.elasticsearch.host=elk-elasticsearch-client \
	--set storage.elasticsearch.port=9200 \

