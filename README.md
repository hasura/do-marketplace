# Hasura DigitalOcean Marketplace

This repository contains build automation scripts for Hasura Image on DigitalOcean Marketplace.

### Getting Started

Packer is a tool which helps to automate the entire build process from a single source configuration file.

The `template.json` is the single source configuration packer will use to build and snapshot the droplet. Some variables may need to be customized to suit any future updates.

To run this the scripts that this template uses, you'll need to [install Packer](https://www.packer.io/intro/getting-started/install.html) and create a [DigitalOcean personal access token](https://www.digitalocean.com/docs/api/create-personal-access-token/) and then add the token in the `variables.json`.

```
cp variables.sample.json variables.json
# add token to variables.json
```

and then run

```
packer build -var-file=variables.json template.json
``` 

It will do the following:

* Create a build droplet.
* Clean and verify the droplet.
* Shut down and snapshot the droplet.
