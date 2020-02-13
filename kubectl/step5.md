Let's look at the pods in the cluster.

`kubectl get pods`{{execute}}

At this moment in the cluster, this command will not show any pods running because it shows the pods in the default Namespace. We currently, do not have any pods in that Namespace.

**Pro Tip**: 
`kubectl get po` is a shorten version of the command above.