# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.13.0"

# Support for default hiera data in modules

github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",    "0.0.10"
github "dnsmasq",     "2.0.4"
github "foreman",     "1.2.0"
# mod "gcc", "0.0.1", :git => "https://github.com/boxen/puppet-gcc.git", :ref => "abc7639"
github "git",         "2.13.0"
github "go",          "2.1.0"
github "homebrew",    "2.2.0"
github "hub",         "1.4.5"
github "inifile",     "1.4.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.9.0"
github "nodejs",      "5.0.9"
github "openssl",     "1.0.0"
github "phantomjs",   "3.0.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.4.1"
github "ruby",        "8.6.0"
github "stdlib",      "4.7.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "zsh", 	      "1.0.0"
github "osx", 	      "2.7.1"
github "chrome",      "1.2.0"
github "cloudapp",    "1.0.2"
github "java",        "1.7.1"
github "iterm2",      "1.2.2"
github "tunnelblick", "1.0.7"
github "hipchat",     "1.1.3"
github "vmware_fusion", "1.2.0"
github "vagrant",     "3.2.0"
github "better_touch_tools",     "3.0.0"
github "karabiner",   "1.0.6"
github "seil",   "1.0.2"
github "silverlight",  "1.0.1"
github "virtualbox",  "1.0.13"
github "textual",  "4.2.0"
github "notational_velocity", "1.1.2"
github "vlc",    "1.1.0"
github "copy", "1.0.0"
github "licecap", "1.0.1"

mod "casharma-brewcask", :git => "git://github.com/phinze/puppet-brewcask.git"
