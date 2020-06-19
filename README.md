# packer-template-solaris

[![CI](https://github.com/diodonfrost/packer-template-solaris/workflows/CI/badge.svg)](https://github.com/diodonfrost/packer-template-solaris/actions)

Packer templates for building solaris minimal vagrant baseboxes

### Using public boxes

Adding a solaris box to Vagrant:

```shell
vagrant box add diodonfrost/solaris-10.11
```

Using a solaris box in a Vagrantfile:

```shell
Vagrant.configure("2") do |config|
  config.vm.box = "diodonfrost/solaris-10.11"
end
```

### Building Boxes

#### Requirements

-   [Packer](https://www.packer.io/)
-   [VirtualBox](https://www.virtualbox.org)

#### Using packer

To build an solaris 10.11 box with virtualbox provider:
```shell
packer build solaris-10/10.11.json
```

### Related projects

My main source of inspiration:

*   [https://github.com/chef/bento](https://github.com/chef/bento)

### License

Apache 2

### Author Information

Created in 2018 by diodonfrost.
