# Vagrant Basics - Mount
Mounting folders helps to incorporate and test files from your local machine in the VM.

## Running the Demo
```
vagrant up
``` 

## Testing
```
vagrant ssh vm001
ls /var/app
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