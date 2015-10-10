name             'snort'
maintainer       'Joshua Timberman'
maintainer_email 'cookbooks@housepub.org'
license          'Apache 2.0'
description      'Installs Snort IDS packages'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.1'

recipe 'snort', 'Installs snort packages based on platform'

%w(ubuntu debian redhat centos fedora scientific amazon oracle).each do |os|
  supports os
end

source_url 'https://github.com/jtimberman/snort-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/jtimberman/snort-cookbook/issues' if respond_to?(:issues_url)
