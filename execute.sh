#!/bin/bash

echo "Processing: $url"
mkdir /var/opt/webhookd/work/$url
wget --recursive --page-requisites --adjust-extension --span-hosts --convert-links --restrict-file-names=windows --domains $url --no-parent https://$url -P /var/opt/webhookd/work/$url
