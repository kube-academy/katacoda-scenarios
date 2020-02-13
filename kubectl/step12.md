If you want to sort the information output, this flag is helpful:

`kubectl get pod --sort-by=.` by some data point. 

In this case, let's sort by name
`kubectl get pod --sort-by=.metadata.name`{{execute}}

You should see the pods in descending order.