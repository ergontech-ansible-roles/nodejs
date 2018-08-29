nodejs Role
===

## Role Variables

Install Node8 with npm and yarn.
```
node_version: 8.x
install_yarn: true
```

Install Node6 with npm and without yarn.
```
node_version: 6.x
install_yarn: false
```

## Using this role in your project

```
$ cat requirements.yml
---

- src: https://github.com/ergontech-ansible-roles/nodejs
  version: 1.0.0
  name: nodejs
```

## Development Workflow

1. Open a new feature branch off master with a ticket included
1. Make changes to the role's code
1. Boot the development virtual machine and review ansible output
1. Write ServerSpec tests to check for the result of your changes
1. Test against the virtual machine with ServerSpec
1. Open a PR against master
1. Once accepted and merged into master, create a release tag
1. Use the new release tag in the requirements.txt of your project

## Testing
Documentation can be found [here](docs/testing.md).

## Contributing
Documentation can be found [here](docs/contributing.md).
