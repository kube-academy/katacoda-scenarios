Now that we have created two new namespaces, we can deploy a container in each of the namespaces.

Let's  deploy a single `redis` container into the `backend` namespace using  `kubectl run` with the `--restart=Never`. Type the below command:

`kubectl run redis --image=redis -n backend --restart=Never `{{execute}}

*Note: The `--restart=Never` flag tells the `kubectl run` command to create a single pod.*

Let's use another method to deploy a single `nginx` container application in the `frontend` namespace using  `kubectl run` with the `--generator` flag. Type the below command:

`kubectl run nginx --generator=run-pod/v1 --image=nginx --namespace frontend`{{execute}}

*Note: The `--generator` flag tells the `kubectl run` command to pin the resource to a specific apiVersion specification. In this case apiVersion:v1 and kind:pod. This flag is **NOT** widely used and may get depracated in future version releases*


Now. let's verify whether our pods have been created:

`kubectl get pods`{{execute}}

**Oops!** `No resources found`. You won't see any resources, because you are currently in the `default` namespace and the new containers were deployed into different namespaces. To retrieve and display the newly created containers, we need to pass the `--namespace NAMESPACE-NAME` flag  or the `-n` flag, which is short for the `--namespace` flag.

Let's check on the *pods* created in the `frontend` *namespace* by typing the below command:

`kubectl get pods --namespace frontend`{{execute}}

We can run a similar command to check on the *pods* in the `backend` *namespace* by typing:

`kubectl get pods -n backend`{{execute}}
