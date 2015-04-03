curl -L http://bootstrap.saltstack.org | sudo sh -s -- -M
sudo salt-key --gen-keys=minion
sudo cp minion.pub /etc/salt/pki/master/minions/minion
sudo cp minion.p* /vagrant/
