#!/bin/sh
# Main script

rm hosts ids
touch hosts ids

bash wb.sh # Creating webserver-vm

bash db.sh # Creating database-vm

bash c.sh

rm *.txt

ansible-playbook ws.yaml
ansible-playbook db.yaml
ansible-playbook c.yaml

echo "Setup complete"
