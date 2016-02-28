# Vagrant Example Basics - Networking - Setting IP Address
Setting the IP address of you local VMs allows you to interact with them in a more defined way. By default Vagrant will define an IP for you ensuring that it does not overlap with other VMs already running, but it is a common struggle to easily find out what the IP is. Defining the IP address of your VMs puts the control back in your hands.

To set the IP address you need to define the `node.vm.network` property for the VM within the scope of a single VM. If you set this globally in a multi-machine environment or define an IP already provisioned you will recieve an error.

```
  config.vm.define "vm001" do |node|
    node.vm.hostname = "vm001"
    node.vm.network "private_network", ip: "10.4.1.101"
  end
```

## Running the Demo
```
vagrant up
``` 

## Testing
```
ping 10.4.1.101
```

## Removing all VMs
Vagrant destroy removes the VM from your local hypervisor. The `-- force` argrument bypasses the prompt asking you to approve each VM being removed.

```
vagrant destroy --force
```

## Consult the Source
The most up-to-date information can be found through the following means:

* Website: [https://www.vagrantup.com/](https://www.vagrantup.com/)
* Source: [https://github.com/mitchellh/vagrant](https://github.com/mitchellh/vagrant)
* IRC: `#vagrant` on Freenode
* Mailing list: [Google Groups](https://groups.google.com/group/vagrant-up)