#!/bin/bash

file="/home/vagrant/provisioned"
if [ ! -f "$file" ]; 
then
	apt-get update
	apt-get -y install language-pack-en ruby-dev
	apt-get -y autoremove

	# Uncomment to test hiera-eyaml
	# gems=("hiera" "hiera-eyaml" "hiera-eyaml-gpg")
	gems=("hiera")

	for gem in "${gems[@]}"
	do
		if ! gem spec $gem > /dev/null 2>&1; then
			gem install --no-ri --no-rdoc $gem
		fi
	done

	touch $file
else
	echo "Shell provisioner already ran, delete $file if you wish to run this provisioner again"
fi
