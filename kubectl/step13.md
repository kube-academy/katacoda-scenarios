Here are some more quick tips to help you be more efficient using `kubectl`:
- Get the documentation for Kubernetes resources, such as Pods or Services:

For example, this will show you details about a Deployment resource type:

`kubectl explain deployment`{{execute}}

- View all the supported resources types:

`kubectl api-resources`{{execute}}

- View all the resources deployed to the cluster in the `default` Namespace:

`kubectl get all`{{execute}}