# terraform_sacloudAutoDeploy
deploy automation example for sakura cloud by terraform

### 1. Overview
For Easy-Deploy to Sakura Cloud.
#WIP

### 2. Description
Using terraform for Easy-Deploy
#WIP

### 3. Requirement
+ terraform platform
  - https://www.terraform.io/downloads.html
  - terraform can work in any OS
+ sakura cloud API keys
  - https://secure.sakura.ad.jp/cloud/iaas/#!/pref/apikey/
  - Get your API key from your Control panel.

### 4. Installation
only cloning this repo to your local folder.

```
$ git clone https://github.com/onifinger/terraform_sacloudAutoDeploy.git
```

Sorry, you have a bit of work, though.

### 5. Usage
1. Run commands below.
  ```
  $ cd /usr/local/bin
  $ sudo unzip terraform_binary.zip
  $ sudo unzip terraform-provider-sakuracloud_xxx_xxx.zip
  ```
1. Test your terraform env.
  ```
  $ terraform --help
  ```

1. edit prof.tf according to your env.
1. Run commands below.
  ```
  $ terraform plan
  $ terraform apply
  ```

  if you wanna clear env on Sakura Cloud, execute below.
  ```
  $ terraform destroy
  ```
