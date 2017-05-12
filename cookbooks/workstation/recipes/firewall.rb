
bash 'firewallctl' do
  code <<-EOF
    if ! firewallctl  config get default-zone | grep trusted
    then
      firewallctl config set default-zone trusted
    fi
  EOF
end
