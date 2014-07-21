#!/bin/bash

NODEJS_NOT_INSTALLED=`which nodejs`

if [ -z $NODEJS_NOT_INSTALLED ]; then
	# Update NodeJS in Ubuntu 10.04. The NodeJS version that comes by default is too old.
	apt-get install -y python-software-properties git-core
	add-apt-repository ppa:chris-lea/node.js
	apt-get update
	apt-get install -y nodejs

	# Installs Yeoman, Grunt, Bower and a generator to start Angular projects
	npm install -g yo generator-angular
fi
