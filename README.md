# jt-mbp
Ansible scripts for Macbook setup

I have no idea what I'm doing... don't follow this example.

Download repo without git:

curl -L https://github.com/ThreeFDDI/jt-mbp/archive/master.zip | tar zx

Run Ansible playbook:

ansible-playbook -i inventory jtmbp.yml -t macos,brew
