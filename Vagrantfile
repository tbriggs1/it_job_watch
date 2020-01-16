required_plugins = %w( vagrant-hostsupdater vagrant-berkshelf )
required_plugins.each do |plugin|
  exec "vagrant plugin install #{plugin};vagrant #{ARGV.join(" ")}" unless Vagrant.has_plugin? plugin || ARGV[0] == 'plugin'
end
Vagrant.configure("2") do |config|
  config.omnibus.chef_version = '14.12.9'
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.100"
    app.hostsupdater.aliases = ["development.local"]
    app.vm.synced_folder "IT_jobs_watch", "/home/ubuntu/it_watch_job"
    app.vm.provision "chef_solo" do |chef|
        chef.cookbooks_path = ["C:/CookBooks"]
        chef.add_recipe "it_watch_job::default"
  end
end

end
