#!/bin/bash

echo "Starting UNdeployment of ${deployed.name} on ${deployed.container.name}."
source ${deployed.container.serverDir}/bin/mqsiprofile

BEFORE=$(mqsilist ${deployed.container.integrationNodeName} -e ${deployed.container.integrationServerName}|grep -v Successful|awk -F":" '{ print "["$2"]" }'|sed 's/\[ /\[/g')
mqsideploy ${deployed.container.integrationNodeName} -e ${deployed.container.integrationServerName} -d ${deployed.name}
AFTER=$(mqsilist ${deployed.container.integrationNodeName} -e ${deployed.container.integrationServerName}|grep -v Successful|awk -F":" '{ print "["$2"]" }'|sed 's/\[ /\[/g')

echo "BEFORE: ${r"${BEFORE}"}"
echo "AFTER : ${r"${AFTER}"}"

exit $?
