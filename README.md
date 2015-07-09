# EWA local development server

This repository contains code and instructions to set up a local blank copy of the EWA website on a desktop computer

Steps: 

1. Download and install [Virtualbox](https://www.virtualbox.org/wiki/Downloads), [Vagrant](http://www.vagrantup.com/downloads.html), and [git](https://git-scm.com/downloads).

 * **IMPORTANT**: On Windows, during the installation of Git, a screen will appear asking you to configure line ending conversions, choose the second option, **Checkout as-is, commit Unix-style line endings**. There is a screenshot within the root of this repository. 

2. Open the command prompt/console/terminal. If using Windows, the command prompt needs to be 'run as administrator'. Instructions for this can be found online and will vary according to the version of Windows being used.

3. Install vagrant-hostsupdater plugin by running `vagrant plugin install vagrant-hostsupdater`.

4. Choose a location on your machine and clone [the repository](https://github.com/ox-it/ewa): `git clone https://github.com/ox-it/ewa`. Git will automatically checkout the repository to a new *ewa* folder.

5. Copy *ewa/puppet/hieradata/ewa.vm.yaml.dist* to *ewa/puppet/hieradata/ewa.vm.yaml*. Open this file for editing, go to the bottom and insert the provided credentials in ewa::svn::username: and ewa::svn::password:

6. cd into the *ewa/vagrant* directory.

7. Run the following command: `git submodule update --init --recursive`

8. Copy Vagrantfile.dist to Vagrantfile

9. Enter the command `vagrant up`. Wait a few minutes for the provisioning process to complete.

10. Navigate to *[ewa.vm](http://ewa.vm/)* in your web browser.

11. Database access is available at http://ewa.vm/phpmyadmin. The username is *ewa* and the password is *password*
