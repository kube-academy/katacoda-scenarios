In this step, we are going to update the `nginx` image from `nginx:1.20` to `nginx:1.21` with no downtime. We created a deployment in the previous step, which provides a mechanism (`rollingUpdate`) by default.

Before we proceed with the update, let's scale the previous deployment five replicas again:

`kubectl scale deployment/nginx-deployment --replicas=5`{{execute}}

Let's verify whether the application has been scaled:

`kubectl get pods`{{execute}}

`kubectl get deployment/nginx-deployment`{{execute}}

Check the `Ready` column in the deployment output. It will display `5/5` when the scaling has completed.

Let's filter all the pod names along with their current `nginx` image version using custom-columns:

`kubectl get pods -o custom-columns=Pod_NAME:.metadata.name,IMAGE_VER:.spec.containers[*].image`{{execute}}

Now, let's proceed with the update. We will add the `--record` flag to capture and record the history of the rollout: Type the below command:

`kubectl set image deployment/nginx-deployment nginx=quay.io/bitnami/nginx:1.21 --record`{{execute}}

Alternatively, the result above can be  achieved by editing the deployment manifest either manually or using the `kubectl edit deployment DEPLOYMENT NAME`.  The deployment will be opened in the default text editor (typically `vim`). Edit the  .spec.template.spec.containers[].image key's value by changing the image to `nginx:1.21` and saving the changes.  As long as the manifest validates properly, the deployment will be updated in the cluster.


**NOTE:** *Updating the image of a deployment using the imperative `kubectl set image` commands is not best practice. The best practice is to manually edit the deployment manifest file and update the spec.template.spec.containers[].image field, save it, and run the `kubectl apply -f DEPLOYMENT.YAML` command. This way, the deployment manifest file remains the source of truth.*