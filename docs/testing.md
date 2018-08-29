## Testing

There is a Vagrant development environment at your disposal to aid in writing
ansible roles. Booting the virtual machine up is as easy as `vagrant up`. It
will boot the virtual machine, install ansible on the vm, and run ansible. You
should not require anything more than virtualbox and vagrant.

## ServerSpec

* https://serverspec.org/
* https://serverspec.org/resource_types.html

### Writing tests
Tests are located in `spec/localhost/*_spec.rb`. You can create one file or
many, so long as they belong in the `spec/localhost/` directory. They must end
in `_spec.rb`, as thats what ServerSpec looks for.

An example:
```
$ cat spec/localhost/example_spec.rb
describe command('which grep') do
  its(:exit_status) { should eq 0 }
end

describe package('httpd') do
  it { should be_installed }
end
```

More examples and documentation can be found at https://serverspec.org/resource_types.html

### Running tests
You can locally test your changes via Vagrant and Serverspec.  Serverspec tests
are optional but highly recommended. You will need to install the vagrant plugin
for serverspec to work.

```
$ vagrant plugin install vagrant-serverspec
Installing the 'vagrant-serverspec' plugin. This can take a few minutes...
...
Installed the plugin 'vagrant-serverspec (1.3)'!
```

You can run tests by `vagrant provision --provision-with serverspec`. This is
easier than dealing with Ruby or Rake. 

Running `vagrant provision` will provision the virtual machine with ansible and then run the ServerSpec tests.

## Travis-CI
Any push to origin containing a `.travis.yml` file will be automatically ran on
Travis.

Travis will test for ansible syntax, successful ansible completion, ansible idempotence, and serverspec
tests. You will get an email if it passes or fails.
