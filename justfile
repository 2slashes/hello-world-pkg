# https://just.systems/man/en/

# REQUIRES

uv := require("uv")

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
