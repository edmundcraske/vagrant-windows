require 'serverspec'
require 'winrm'

set :backend, :winrm

user = "vagrant"
pass = "vagrant"
endpoint = "http://#{ENV['TARGET_HOST']}:55985/wsman"

winrm = ::WinRM::WinRMWebService.new(endpoint, :ssl, :user => user, :pass => pass, :basic_auth_only => true)
winrm.set_timeout 300 # 5 minutes max timeout for any operation
Specinfra.configuration.winrm = winrm
