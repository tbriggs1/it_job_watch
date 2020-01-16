sudo apt-get update && upgrade

cd /vagrant/IT_jobs_watch

sudo apt install python3-pip -y

mkdir /home/vagrant/Downloads/

touch /home/vagrant/Downloads/ItJobsWatchTop30.csv

pip3 install -r requirements.txt --user
