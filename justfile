# https://just.systems/man/en/

# SETTINGS

set dotenv-load := true

# VARIABLES

SOURCES := "src"
TESTS := "tests"

# DEFAULTS

# display help information
default:
    @just --list

# IMPORTS

import 'tasks/check.just'
