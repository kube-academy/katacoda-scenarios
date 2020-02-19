Look at the Pods in the `kube-system` Namespace:

`kubectl get pods -n kube-system`{{execute}}

You will see the Pods in the `kube-system` namespace.

If you want to see the pods in all the Namespaces, use this command:

`kubectl get pods -A`{{execute}}