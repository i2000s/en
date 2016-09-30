---
layout: post
title: Use OpenShift to host Wordpress website
subtitle: A note for the ICIQ website
tags: website wordpress
categories: notes
---
Main instruction is [here part I](https://code.tutsplus.com/tutorials/running-wordpress-on-openshift-an-introduction--cms-20058) and [part II](https://code.tutsplus.com/tutorials/running-wordpress-on-openshift-part-2--cms-19947).

On step 1, I am using iciq-i2000s.rhcloud.com as the domain name.

On step 2, need a public key on Ubuntu.
I want to use existing keys, and hence I followed [this instruction](https://help.github.com/articles/checking-for-existing-ssh-keys/) to check on the terminal.
Turns out, I don't have the SSH key set up, then I followed [this instruction](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) to generate the key pair and added to Github and then the OpenShift.

I followed [this instruction](https://blog.openshift.com/using-filezilla-and-sftp-on-windows-with-openshift/) to check files on the server.
The code deployed on the server is under the `openshift/XXXXXX/app-root/data/current` directory.
So, to put files under the root directory of the WP site, I tried dumping them in the `.openshift/config/` folder and also add the file names in the `.openshift/action_hooks/deploy` file for the server to copy those files over to the correct place.
