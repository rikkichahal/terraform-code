#!/bin/bash

# cd "$(git rev-parse --show-toplevel)" || exit

terraform-docs markdown . > specs.md