# bootstrap the master
curl -L http://bootstrap.saltstack.org | sudo sh -s -- -M

# generate minion key and copy it to the vagrant dir for them minion to reach
sudo salt-key --gen-keys=minion
sudo cp minion.pub /etc/salt/pki/master/minions/minion
sudo cp minion.p* /vagrant/

# create salt server dir

sudo ln -s /vagrant/salt /srv/salt
