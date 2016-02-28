# Vagrant Basic Examples - Multi Machine using a Loop

I find that Vagrant is most powerful in defining, testing and controlling multi-VM environments. Primarily the applications that I interact with are distributed over multiple runtime contexts. In some situations componets can be deployed in multiple configurations including single server context, distributed over multiple servers and any combinaton in between. Using Vagrant you can easily define and describe multiple topologies to help ensure that your configurations will work in a particular context you are looking for.

In many situations you will have a need to create multiple machines with the same configuration. For example web servers or server clusters. To keep your configuration files clean you can use a simple loop to cut down repetition.

```
  (1 .. 3).each do |i|
    config.vm.define "web#{i}" do |node|
        node.vm.hostname = "web#{i}"
    end
  end
```

For more information on defining a multi-machine environment, consult the [Vagrant documentation](https://www.vagrantup.com/docs/multi-machine/)

## Bring up all machines
```
vagrant up
```

## Bring up a Single Machine
To bring up a single machine you need to tell Vagrant which machine you would like to bring up `vagrant up {machine name}`. For example to bring up the VM named web2 you would use:

```
vagrant up web2
```


## To Run the Demo
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
