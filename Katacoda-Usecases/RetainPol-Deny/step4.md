We'll check if the policy is working as intended.

violation.yaml
Take a look at the deployment-violation.yaml file before applying.

kubectl apply -f deployment-violation.yaml{{execute}}

"Retain Policy should not be used" violation message shall appear.

non-violation.yaml
Take a look at the deployment-non-violation.yaml before applying.

kubectl apply -f deployment-non-violation.yaml{{execute}}

This manifest executes successfully as the reclaimPolicy property is Delete or anything else than Retain.