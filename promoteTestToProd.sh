#! /bin/bash

TIME=`date +%s`
mkdir ~/www-back/$TIME

# Making sure prod exists 
if [ ! -d ~/www-prod ]; then
  echo "Creating www-prod"
  ln -s /var/www/html ~/www-prod
fi



if [ -f ~/www-test/index.html ]; then
	sudo mv ~/www-prod/* ~/www-back/$TIME/
	sudo cp -r ~/www-test/* ~/www-prod/
else
	echo "ERROR CAN'T UPDATE HACKS TILDE" | sendmail johncomposed@gmail.com
fi

