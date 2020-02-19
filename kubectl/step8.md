Check to see if the Deployment is in the `Ready` condition by waiting for the 
number under the `AVAILABLE` column from the command below to scale from 0 to 2: 

`watch kubectl get deployment`{{execute}}

The manifest you deployed in the previous step asks for `replicas: 2`, which means 
to create two Pods with Nginx containers running. 

Stop the watch on the above command before continuing:

clear{{execute interrupt}}

**Pro Tip**: 
`kubectl get deploy` is a shorten version of the command above.