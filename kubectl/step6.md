Look at the pods in the kube-system Namespace.

`kubectl get pods -n kube-system`{{execute}}

You will see the pods in the kube-system namespace.

If you want to see the pods in all the namespaces use this command:

`kubectl get pods -A`{{execute}}