Let’s setup the terminal to help you ease through using the command line 
by adding autocompletion support for Bash, which can save you a lot of typing.

This terminal setup is bash shell, so we will use the following command to 
set up completion:

`source <(kubectl completion bash)`{{execute}}

Now we can do things like `kubectl get pods` and it will be Namespace aware. We will play with this later on in the scenario.