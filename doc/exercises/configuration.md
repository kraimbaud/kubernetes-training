# Configuration Exercises
Create `ex2` namespace and deploy this [wordpress mysql app](resources/ex2-wordpress-mysql.yaml) in your K8s cluster.

    kubectl apply -f https://raw.githubusercontent.com/kraimbaud/kubernetes-training/main/doc/exercises/resources/ex2-wordpress-mysql.yaml

If everything went right, you just deployed a wordpress app connected to a mysql database with the password `1234`.   
Totally secure right? Don't worry, we are going to fix that, but first let's go to `http://nodeip:30999/` 
and check out this beautiful wordpress website.

### Exercise 2.1 - ConfigMaps
If you have a look at the mysql and wordpress deployed object, you will see that all the configuration are hardcoded in the yaml file.   
This is not a good practice. Let's fix that by using ConfigMaps for those 2 resources. 
There are different way to inject ENV variables with ConfigMaps :   

Try the 3 of them.   

| Type                 | Responses                                                       |
| -------------------- | --------------------------------------------------------------- |
| Env                  | [:bulb: response](responses/ex2/ex2-configMaps-1-wordpress-mysql.yaml) |
| Single Env Variables | [:bulb: response](responses/ex2/ex2-configMaps-2-wordpress-mysql.yaml) |
| File in a Volume     | [:bulb: response](responses/ex2/ex2-configMaps-3-wordpress-mysql.yaml) |

:exclamation: For the `file in a volume` it's normal if it is not working as wordpress is using environment variables. Just check if 
the files are in the mounted directory.

### Exercise 2.2 - Secrets
Now as you can see the password database `1234` is in clear in the ConfigMap. Let's change that by using a Secret and
make the password stronger.

[:bulb: response](responses/ex2/ex2-secrets-wordpress-mysql.yaml)

### Exercise 2.3 - Configure Service Accounts for Pods

## What's Next?
As you can see, there is one issue with those examples. There is no data persistence if we remove and scale pods.
Let's go to the next chapter to learn [how to use persistence with volume](3.persistence.md).
