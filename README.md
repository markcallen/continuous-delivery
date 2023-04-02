# continuous-delivery

continuous-delivery example using release-it

[![oclif](https://img.shields.io/badge/cli-oclif-brightgreen.svg)](https://oclif.io)
[![Version](https://img.shields.io/npm/v/oclif-hello-world.svg)](https://npmjs.org/package/oclif-hello-world)
[![CircleCI](https://circleci.com/gh/oclif/hello-world/tree/main.svg?style=shield)](https://circleci.com/gh/oclif/hello-world/tree/main)
[![Downloads/week](https://img.shields.io/npm/dw/oclif-hello-world.svg)](https://npmjs.org/package/oclif-hello-world)
[![License](https://img.shields.io/npm/l/oclif-hello-world.svg)](https://github.com/oclif/hello-world/blob/main/package.json)

<!-- toc -->

- [oclif-hello-world](#oclif-hello-world)
- [Usage](#usage)
- [Commands](#commands)
<!-- tocstop -->

# Usage

<!-- usage -->

```sh-session
$ npm install -g continuous-delivery
$ continuous-delivery COMMAND
running command...
$ continuous-delivery (--version)
continuous-delivery/0.0.1 linux-x64 node-v18.14.2
$ continuous-delivery --help [COMMAND]
USAGE
  $ continuous-delivery COMMAND
...
```

<!-- usagestop -->

# Commands

<!-- commands -->

- [`continuous-delivery hello PERSON`](#continuous-delivery-hello-person)
- [`continuous-delivery hello world`](#continuous-delivery-hello-world)
- [`continuous-delivery help [COMMANDS]`](#continuous-delivery-help-commands)
- [`continuous-delivery plugins`](#continuous-delivery-plugins)
- [`continuous-delivery plugins:install PLUGIN...`](#continuous-delivery-pluginsinstall-plugin)
- [`continuous-delivery plugins:inspect PLUGIN...`](#continuous-delivery-pluginsinspect-plugin)
- [`continuous-delivery plugins:install PLUGIN...`](#continuous-delivery-pluginsinstall-plugin-1)
- [`continuous-delivery plugins:link PLUGIN`](#continuous-delivery-pluginslink-plugin)
- [`continuous-delivery plugins:uninstall PLUGIN...`](#continuous-delivery-pluginsuninstall-plugin)
- [`continuous-delivery plugins:uninstall PLUGIN...`](#continuous-delivery-pluginsuninstall-plugin-1)
- [`continuous-delivery plugins:uninstall PLUGIN...`](#continuous-delivery-pluginsuninstall-plugin-2)
- [`continuous-delivery plugins update`](#continuous-delivery-plugins-update)

## `continuous-delivery hello PERSON`

Say hello

```
USAGE
  $ continuous-delivery hello PERSON -f <value>

ARGUMENTS
  PERSON  Person to say hello to

FLAGS
  -f, --from=<value>  (required) Who is saying hello

DESCRIPTION
  Say hello

EXAMPLES
  $ oex hello friend --from oclif
  hello friend from oclif! (./src/commands/hello/index.ts)
```

_See code: [dist/commands/hello/index.ts](https://github.com/markcallen/continuous-delivery/blob/v0.0.1/dist/commands/hello/index.ts)_

## `continuous-delivery hello world`

Say hello world

```
USAGE
  $ continuous-delivery hello world

DESCRIPTION
  Say hello world

EXAMPLES
  $ continuous-delivery hello world
  hello world! (./src/commands/hello/world.ts)
```

## `continuous-delivery help [COMMANDS]`

Display help for continuous-delivery.

```
USAGE
  $ continuous-delivery help [COMMANDS] [-n]

ARGUMENTS
  COMMANDS  Command to show help for.

FLAGS
  -n, --nested-commands  Include all nested commands in the output.

DESCRIPTION
  Display help for continuous-delivery.
```

_See code: [@oclif/plugin-help](https://github.com/oclif/plugin-help/blob/v5.2.8/src/commands/help.ts)_

## `continuous-delivery plugins`

List installed plugins.

```
USAGE
  $ continuous-delivery plugins [--core]

FLAGS
  --core  Show core plugins.

DESCRIPTION
  List installed plugins.

EXAMPLES
  $ continuous-delivery plugins
```

_See code: [@oclif/plugin-plugins](https://github.com/oclif/plugin-plugins/blob/v2.4.3/src/commands/plugins/index.ts)_

## `continuous-delivery plugins:install PLUGIN...`

Installs a plugin into the CLI.

```
USAGE
  $ continuous-delivery plugins:install PLUGIN...

ARGUMENTS
  PLUGIN  Plugin to install.

FLAGS
  -f, --force    Run yarn install with force flag.
  -h, --help     Show CLI help.
  -v, --verbose

DESCRIPTION
  Installs a plugin into the CLI.
  Can be installed from npm or a git url.

  Installation of a user-installed plugin will override a core plugin.

  e.g. If you have a core plugin that has a 'hello' command, installing a user-installed plugin with a 'hello' command
  will override the core plugin implementation. This is useful if a user needs to update core plugin functionality in
  the CLI without the need to patch and update the whole CLI.


ALIASES
  $ continuous-delivery plugins add

EXAMPLES
  $ continuous-delivery plugins:install myplugin

  $ continuous-delivery plugins:install https://github.com/someuser/someplugin

  $ continuous-delivery plugins:install someuser/someplugin
```

## `continuous-delivery plugins:inspect PLUGIN...`

Displays installation properties of a plugin.

```
USAGE
  $ continuous-delivery plugins:inspect PLUGIN...

ARGUMENTS
  PLUGIN  [default: .] Plugin to inspect.

FLAGS
  -h, --help     Show CLI help.
  -v, --verbose

GLOBAL FLAGS
  --json  Format output as json.

DESCRIPTION
  Displays installation properties of a plugin.

EXAMPLES
  $ continuous-delivery plugins:inspect myplugin
```

## `continuous-delivery plugins:install PLUGIN...`

Installs a plugin into the CLI.

```
USAGE
  $ continuous-delivery plugins:install PLUGIN...

ARGUMENTS
  PLUGIN  Plugin to install.

FLAGS
  -f, --force    Run yarn install with force flag.
  -h, --help     Show CLI help.
  -v, --verbose

DESCRIPTION
  Installs a plugin into the CLI.
  Can be installed from npm or a git url.

  Installation of a user-installed plugin will override a core plugin.

  e.g. If you have a core plugin that has a 'hello' command, installing a user-installed plugin with a 'hello' command
  will override the core plugin implementation. This is useful if a user needs to update core plugin functionality in
  the CLI without the need to patch and update the whole CLI.


ALIASES
  $ continuous-delivery plugins add

EXAMPLES
  $ continuous-delivery plugins:install myplugin

  $ continuous-delivery plugins:install https://github.com/someuser/someplugin

  $ continuous-delivery plugins:install someuser/someplugin
```

## `continuous-delivery plugins:link PLUGIN`

Links a plugin into the CLI for development.

```
USAGE
  $ continuous-delivery plugins:link PLUGIN

ARGUMENTS
  PATH  [default: .] path to plugin

FLAGS
  -h, --help     Show CLI help.
  -v, --verbose

DESCRIPTION
  Links a plugin into the CLI for development.
  Installation of a linked plugin will override a user-installed or core plugin.

  e.g. If you have a user-installed or core plugin that has a 'hello' command, installing a linked plugin with a 'hello'
  command will override the user-installed or core plugin implementation. This is useful for development work.


EXAMPLES
  $ continuous-delivery plugins:link myplugin
```

## `continuous-delivery plugins:uninstall PLUGIN...`

Removes a plugin from the CLI.

```
USAGE
  $ continuous-delivery plugins:uninstall PLUGIN...

ARGUMENTS
  PLUGIN  plugin to uninstall

FLAGS
  -h, --help     Show CLI help.
  -v, --verbose

DESCRIPTION
  Removes a plugin from the CLI.

ALIASES
  $ continuous-delivery plugins unlink
  $ continuous-delivery plugins remove
```

## `continuous-delivery plugins:uninstall PLUGIN...`

Removes a plugin from the CLI.

```
USAGE
  $ continuous-delivery plugins:uninstall PLUGIN...

ARGUMENTS
  PLUGIN  plugin to uninstall

FLAGS
  -h, --help     Show CLI help.
  -v, --verbose

DESCRIPTION
  Removes a plugin from the CLI.

ALIASES
  $ continuous-delivery plugins unlink
  $ continuous-delivery plugins remove
```

## `continuous-delivery plugins:uninstall PLUGIN...`

Removes a plugin from the CLI.

```
USAGE
  $ continuous-delivery plugins:uninstall PLUGIN...

ARGUMENTS
  PLUGIN  plugin to uninstall

FLAGS
  -h, --help     Show CLI help.
  -v, --verbose

DESCRIPTION
  Removes a plugin from the CLI.

ALIASES
  $ continuous-delivery plugins unlink
  $ continuous-delivery plugins remove
```

## `continuous-delivery plugins update`

Update installed plugins.

```
USAGE
  $ continuous-delivery plugins update [-h] [-v]

FLAGS
  -h, --help     Show CLI help.
  -v, --verbose

DESCRIPTION
  Update installed plugins.
```

<!-- commandsstop -->
