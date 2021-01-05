# Scheduling Exercises - Answers

### Exercise 4.1 - Labels and Selectors

How many pods are in `dev`?

    k -n n4 get pods --selector env=dev

How many pods are in `production`?
    
    k -n n4 get pods --selector env=prod

What is the name of the `front-end` pods in `dev`?

    k -n n4 get pods --selector env=dev,app=front-end

What is the name of the `back-end` pods in `prod`?
    
    k -n n4 get pods --selector env=prod,app=back-end
