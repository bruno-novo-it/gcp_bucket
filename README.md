# GCP Multiple Bucket Creation

## GCP Bucket Creation

This repository will give some examples on how create multiple buckets, public ou private and give user permissions to them

### Go to the project/environment you want and initialize terraform

```sh
    cd envX
    terraform init
```

### See if all the resources that will be created

```sh
    terraform plan -var-file=envX.tfvars
```

### To apply

```sh
    terraform apply -var-file=envX.tfvars
```

### To Clean Up

```sh
    terraform destroy -var-file=envX.tfvars
```

### And delete the terraform files if you didn't uncomment the backend file

```sh
    rm -rf terraform.tfstate.backup terraform.tfstate .terraform.lock.hcl .terraform
```
