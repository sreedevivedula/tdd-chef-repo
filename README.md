This repo illustrates Test First Development of Chef Cookbooks.

Pre-requisites
==============

1. Vagrant and VirtualBox should be installed. I used VirtualBox 4.3.16 and Vagrant 1.6.5 for development.
2. Chef Server, Chef Node and Chef Workstation should be setup. ( Please see http://testreflections.wordpress.com/2014/10/29/getting-started-with-chef/ if you are getting started with Chef. )
3. This repo uses three test frameworks Test Kitchen, Serverspec and Chefspec all three of which come bundled with Chef Development Kit, so you can use them directly.

Stages
======

The different stages in the Test First Development are illustrated through different branches.

* stage1-setup-platforms
* stage2-add-server-tests
* stage3-add-infra-code
* stage4-add-unit-tests
* stage5-deploy-on-nodes

How to run
==========

* Make sure there are two Vagrant Base Boxes centos64 and ubuntu12.0.4 installed. (Please see http://testreflections.wordpress.com/2014/10/29/getting-started-with-chef for image links if necessary). This informaiton is specified in .kitchen.yml in the cookbook.

* After checking out *stage1-setup-platforms*, use the below commands to check the state.

Run the below in cookbooks/mysql directory

kitchen create ( This command should create the test kitchen instances specified in .kitchen.yml)
kitchen verify ( This command should result in mysql recipe not found error )

* After checking out *stage2-add-server-tests*, use the below commands to check the state.

kitchen verify ( This command should result in test failures )

* After checking out *stage3-add-infra-code*, use the below commands to check the state.

kitchen converge ( This command should run the mysql cookbook on the instances )
kitchen verify ( This command should result in test success )

* After checking out *stage4-add-unit-tests*, use the below commands to run unit tests.

rspec spec ( This command should run the ChefSpec tests successfully )

* After checking out *stage5-deploy-on-nodes*, upload the cookbook code into chef-repo and deploy it on nodes.
