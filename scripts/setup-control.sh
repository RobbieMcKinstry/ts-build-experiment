#!/usr/local/bin/bash

# Remove node modules if they exist.
rm -r node_modules || true
# Remove the yarn lockfile if it exists.
rm yarn.lock
# Unlink dev @pulumi/pulumi
yarn unlink @pulumi/pulumi
# Install deps as normal.
yarn install
# Purge hardware cache (MacOS specific)
sync && sudo purge
