FROM quay.io/confidential-containers/runtime-payload:v0

#Copy containerd-shim to /opt/kata/bin
ADD containerd-shim-kata-v2 /opt/kata-artifacts/opt/kata/bin
ADD kata-runtime /opt/kata-artifacts/opt/kata/bin
ADD kata-netmon /opt/kata-artifacts/opt/kata/bin

#Copy run.sh
ADD run-aws.sh /opt/kata-artifacts/opt/kata/bin
ADD run-ibmcloud.sh /opt/kata-artifacts/opt/kata/bin
ADD run-libvirt.sh /opt/kata-artifacts/opt/kata/bin

#Copy cloud-api-adaptor /opt/kata/bin
ADD cloud-api-adaptor-aws /opt/kata-artifacts/opt/kata/bin
ADD cloud-api-adaptor-ibmcloud /opt/kata-artifacts/opt/kata/bin
ADD cloud-api-adaptor-libvirt /opt/kata-artifacts/opt/kata/bin

#Copy configuration file
ADD configuration-remote-cc.toml /opt/kata-artifacts/opt/kata/share/defaults/kata-containers
#Copy kata-deploy.sh
ADD kata-deploy.sh opt/kata-artifacts/scripts
