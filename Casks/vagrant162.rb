cask :v1 => 'vagrant' do
  version '1.6.2'
  sha256 '471443c5912a9e02ebed53a8f8acf05c3faed643de54e986ecbd355755976bc5'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vagrant/vagrant_#{version}.dmg"
  homepage 'http://www.vagrantup.com'
  license :mit

  install 'Vagrant.pkg'
  uninstall :script => { :executable => 'uninstall.tool', :input => %w[Yes] },
            :pkgutil => 'com.vagrant.vagrant'
end
