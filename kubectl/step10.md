Remember we wanted to list the Pods in the `default` namespace previously, but there were no Pods in the Namespace. Now, we have Pods in the `default` Namespace from when we created the Deployment resource.

View the Pods in the `default` namespace:

`watch kubectl get pods`{{execute}}

Keep the watch on the command until the pods are the `RUNNING` condition, which will appear under the `STATUS` section of the output.

Once the Pods are `RUNNING`, you can stop the watch:

clear{{execute interrupt}}
