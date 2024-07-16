kubectl create -f https://download.elastic.co/downloads/eck/1.7.1/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/1.7.1/operator.yaml
cat <<EOF | kubectl apply -f -
apiVersion: elasticsearch.k8s.elastic.co/v1 
kind: Elasticsearch 
metadata: 
  name: quickstart 
spec: 
  version: 7.14.1 #Make sure you use the version of your choice 
  http: 
    service: 
      spec: 
        type: LoadBalancer #Adds a External IP 
  nodeSets: 
  - name: default 
    count: 1 
    config: 
      node.store.allow_mmap: false 
EOF