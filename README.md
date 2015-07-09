# EWA local development server

This repository contains code and instructions to set up a local blank copy of the EWA website on a desktop computer

Steps: 

1. Download and install [Virtualbox](https://www.virtualbox.org/wiki/Downloads), [Vagrant](http://www.vagrantup.com/downloads.html), and [git](https://git-scm.com/downloads).

 * **IMPORTANT**: On Windows, during the installation of Git, a screen will appear asking you to configure line ending conversions, choose the second option, **Checkout as-is, commit Unix-style line endings**. There is a screenshot within the root of this repository. 

2. Open the command prompt/console/terminal. If using Windows, the command prompt needs to be 'run as administrator'. Instructions for this can be found online and will vary according to the version of Windows being used.

3. Install vagrant-hostsupdater plugin by running `vagrant plugin install vagrant-hostsupdater`.

4. Clone [this repository](https://github.com/ox-it/ewa) to your machine, to a location of your choosing: `git clone https://github.com/ox-it/ewa`

5. Copy *ewa/puppet/hieradata/ewa.vm.yaml.dist* to *ewa/puppet/hieradata/ewa.vm.yaml*

6. cd into the *ewa/vagrant* directory.

7. Copy Vagrantfile.dist to Vagrantfile

8. Enter the command `vagrant up`. Wait a few minutes for the provisioning process to complete.

9. Navigate to *[ewa.vm](http://ewa.vm/)* in your web browser.

10. Database access is available at http://ewa.vm/phpmyadmin. The username is *ewa* and the password is *password*
