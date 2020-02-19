We will now take a deeper look at Kubernetes resources by using `kubectl` 
to query these resources.

Start by viewing all Namespaces available on your cluster:

`kubectl get namespace`{{execute}}

You will see all the Namespaces on your cluster, which are used to organize 
where Kubernetes resources are available.

**Pro Tip**: 
`kubectl get ns` is a shorten version of the command above.