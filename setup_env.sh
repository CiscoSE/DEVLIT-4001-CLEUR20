#!/bin/sh

# Build Python environment
virtualenv -p python3.7 venv
source venv/bin/activate
pip install ansible pyvmomi
yum install -y git
pip install --upgrade git+http://github.com/vmware/vsphere-automation-sdk-python.git

# Trust vCenter Self Signed CA
sudo cp vcenter.crt /etc/pki/ca-trust/source/anchors
sudo update-ca-trust

