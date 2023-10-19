Modules: To deploy the sam enc in different environments without changing the main.tf  file we are going to use modules.
To get the above result we are placing the main and variables files in separate folders and creating dev.tf, prod.tf,uat. tf one folder before the modules as given modules_env
In this, the dev.tf and other files define env and nothing more than terraform.tfvars
The definition should start with the module by defining the environment.
In that source we will define the actual path for mai.tf file.
So at a timen n number of environments, we can create without modifying the env.


To apply a specific env we need to pass "terraform apply --target=module."module-name"

To delete a specific environment we need to pass "terraform destroy  --target=module."module-name"


