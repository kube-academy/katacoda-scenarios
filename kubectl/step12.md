If you want to sort the output of queries, you can use the `--sort-by` flag:

`kubectl get pod --sort-by=.` by some data point. 

In this case, let's sort by name
`kubectl get pod --sort-by=.metadata.name`{{execute}}

You should see the Pods in descending order.