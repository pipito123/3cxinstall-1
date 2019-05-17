# 3cxinstall
Quick install of 3CX CLI


apt-get update && apt-get install git -y && git clone https://github.com/febo01/3cxinstall && cd 3cxinstall && find install.sh \( -type d -exec chmod u+rwx,g+rwx,o+rx {} \; -o -type f -exec chmod u+rw,g+rw,o+r {} \; \) | ./install.sh


