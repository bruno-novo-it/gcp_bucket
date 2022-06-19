# GCP Multiple Bucket Creation

## GCP Bucket Creation

This repository will give some examples on how create multiple buckets, public ou private and give user permissions to them

### First, go to the project/environment you want and change the variables inside the envX.tfvars

```sh
    cd envX
    vim/code envX.tfvars
```

### Initialize terraform

```sh
    terraform init
```

#### See if all the resources that will be created

```sh
    terraform plan -var-file=envX.tfvars
```

#### To apply

```sh
    terraform apply -var-file=envX.tfvars
```

#### To Clean Up

```sh
    terraform destroy -var-file=envX.tfvars
```

#### And delete the terraform files if you didn't uncomment the backend file

```sh
    rm -rf terraform.tfstate.backup terraform.tfstate .terraform.lock.hcl .terraform
```

##### :warning: Uncomment the backend.tf file to store the tfstate file in another GCS Bucket
