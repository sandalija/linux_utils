#!/bin/bash
sudo apt update
sudo apt -y install curl 

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

curl -sSL https://get.rvm.io | bash -s stable --ruby

sudo apt-get -y install ruby-dev
sudo apt-get -y install ruby-bundler

if [ $? != 0 ]; 
then
	echo "That update didn't work out so well."
	sleep 3
	bundle install
	sudo apt-get -y install ruby-bundler
fi

bash --login

export PATH="$PATH:$HOME/.rvm/bin";
