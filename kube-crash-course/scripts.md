https://kind.sigs.k8s.io/

On macOS via Homebrew:
```
brew install kind
```

Creating a Cluster 

```
export KIND_EXPERIMENTAL_PROVIDER=podman
kind create cluster --config cluster-config.yaml

```

Deleting a Cluster

```
kind delete cluster
```



Install Ingress NGINX

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

```
Now the Ingress is all setup. Wait until is ready to process requests running:

```
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s
```

Apply the contents

```
kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml
```

Now verify that the ingress works

```
# should output "foo-app"
curl localhost/foo/hostname
# should output "bar-app"
curl localhost/bar/hostname
```

delete simple app

```
kubectl delete -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml
```


https://kubernetes.io/docs/reference/kubectl/quick-reference/

CURL With Host
```
curl -H "Host: app1.kcc.local" http://localhost/
```

switch name space

```
kubectl config set-context --current --namespace=
```