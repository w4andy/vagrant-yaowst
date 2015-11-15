# Vagrant for Yet another OpsWorks ssh Tool (YaOWsT)

**_the test vagrant for the [node-yaowst](https://github.com/w4andy/node-yaowst) project_**

## Table of Contents

- [Requires](#requires)
- [Setting up](#setting-up)
- [Run the cross os tests](#run-the-cross-os-tests)

## Requires
- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [Rsync](https://docs.vagrantup.com/v2/synced-folders/rsync.html)

The Vagrant Boxes use Rsnyc for the **Synced folder** to fix the problem with case insensitive file system on the host system and the problems with os incompatible node module versions (e.q. Mac OS X use another binaries as GNU/Linux)

## Setting up
1. Install [Vagrant](https://docs.vagrantup.com/v2/installation/) and [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. Clone the `vagrant-yaowst` into the same directory as `node-yaowst`
    ```
    $ ls
    node-yaowst vagrant-yaowst
    ```
3. `cd` into the `vagrant-yaowst` directory
4. Start the VM´s by calling `vagrant up`

## Run the cross os tests
```
$ cd vagrant-yaowst
$ ./scripts/test_all_os.sh
```
