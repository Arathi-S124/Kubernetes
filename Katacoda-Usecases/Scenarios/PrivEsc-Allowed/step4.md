We'll check if the policy is working as intended.

violation.yaml
Take a look at the deployment-violation.yaml file before applying.

kubectl apply -f deployment-violation.yaml{{execute}}

"Privilege escalation for container has not been allowed" violation message shall appear.

non-violation.yaml
Take a look at the deployment-non-violation.yaml before applying.

kubectl apply -f deployment-non-violation.yaml{{execute}}

This manifest executes successfully as the privilege property is FALSE.