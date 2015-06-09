#!/bin/bash

echo "Starting deployment of ${deployed.file} on ${deployed.container.name}."
source /home/vagrant/iib-10.0.0.0/server/bin/mqsiprofile

BEFORE=$(mqsilist TESTNODE_vagrant -e ${deployed.container.name}|grep -v Successful|awk -F":" '{ print "["$2"]" }'|sed 's/\[ /\[/g')
mqsideploy TESTNODE_vagrant -e ${deployed.container.name} -a ${deployed.file}
AFTER=$(mqsilist TESTNODE_vagrant -e ${deployed.container.name}|grep -v Successful|awk -F":" '{ print "["$2"]" }'|sed 's/\[ /\[/g')

echo "BEFORE: ${r"${BEFORE}"}"
echo "AFTER : ${r"${AFTER}"}"

exit $?
