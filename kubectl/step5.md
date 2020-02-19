Let's look at the Pods in the cluster:

`kubectl get pods`{{execute}}

At this moment in the cluster, this command will not show any Pods running because it shows the Pods in the `default` Namespace. We currently do not have any Pods in that Namespace.

Whenever no Namespace is specified using the `--namespace` or `-n` flag, the `default` Namespace will be used.

**Pro Tip**: 
`kubectl get po` is a shorten version of the command above.