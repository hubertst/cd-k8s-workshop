# Kubernetes: 101

Niniejsze materiały zostały przygotowane na warsztat Kubernetes: 101 na DojoConfe 2019 w Katowicach
Stanowią uzupełnienie prezentacji.
https://docs.google.com/presentation/d/1CSWpXT4F5Jq7wX7hbnWKmDsym2lYTbNonPKpk9ZymUI/edit?usp=sharing

Kod golang (go-server.go) pochodzi z dwóch źródeł:
* https://gist.github.com/creack/4c00ee404f2d7bd5983382cc93af5147
* https://www.systutorials.com/241704/how-to-get-the-hostname-of-the-node-in-go/

kompilacja go-server.go
`CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o goapp .`

## Użyte w prezentacji linki:

* https://www.virtualbox.org/wiki/Downloads
* https://kubernetes.io/docs/tasks/tools/install-minikube/
* https://kubernetes.io/docs/tasks/tools/install-kubectl/

## Użyte w prezentacji polecenia:

```  
minikube start
minikube status
minikube delete
minikube ssh

kubectl create -f pod.yaml
kubectl get pod
kubectl describe po/hello-nginx
kubectl logs hello-nginx
kubectl port-forward hello-nginx 8080:80
kubectl exec -ti hello-nginx sh
kubectl delete po/hello-nginx

docker build -t cd-demo .
docker tag cd-demo hubertst/cd-demo
docker login
docker push hubertst/cd-demo

minikube dashboard

kubectl exec -ti <pod-mysql> sh
mysql -p
create database wordpress;
create user 'user'@'%' identified by 'password';
grant all on wordpress.* to 'user'@'%';
flush privileges;

kubectl port-forward <pod-wp> 8080:80
```