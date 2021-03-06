#!/bin/bash

# startup script for SecPi

if [ $# -gt 0 ]
then

	# set python path so all classes are found
	export PYTHONPATH=$PWD
	
	PROJECT_PATH=$PWD
	
	if [ $1 = "manager" ]
	then
		cd manager
		python manager.py $PROJECT_PATH
	elif [ $1 = "worker" ]
	then
		cd worker
		python worker.py $PROJECT_PATH
	elif [ $1 = "webinterface" ]
	then
		cd webinterface
		python main.py $PROJECT_PATH
	elif [ $1 = "setup" ]
	then
		cd tools/db
		python setup.py $PROJECT_PATH
	#	python test.py
	else
		echo "Usage: startup.sh <manager|worker|webinterface|setup>"
	fi

else
	echo "Usage: startup.sh <manager|worker|webinterface|setup>"

fi
