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
#   requirements.yml
#
#   Example
# - src: https://github.com/ergontech-ansible-roles/nodejs
#   version: 1.0.0
#   name: nodejs
```

## Testing
Documentation can be found [here](docs/testing.md).

## Contributing
Documentation can be found [here](docs/contributing.md).
