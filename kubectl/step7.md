Create a deployment from this Kubernetes manifest. You can review the manifest [here](https://raw.githubusercontent.com/kubernetes/website/master/content/en/examples/application/deployment.yaml).

This manifest deploys [Nginx](https://www.nginx.com/resources/wiki/). The Pods associated with the Deployment will get deployed to the `default` Namespace. 

Run the `kubectl apply` command below with the `-f` option to specify to create resources from a file: 

`kubectl apply -f https://raw.githubusercontent.com/kubernetes/website/master/content/en/examples/application/deployment.yaml`{{execute}}

We will look at the Pods for the Deployment in the next steps.
