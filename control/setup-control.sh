#!/usr/local/bin/bash

cd /Users/robbiemckinstry/workspace/pulumi/nodejs-demo/control
pulumi stack select control
# Remove node modules if they exist.
rm -r node_modules || true
# Remove the yarn lockfile if it exists.
rm yarn.lock
# Unlink dev @pulumi/pulumi
yarn link @pulumi/pulumi
# Install deps as normal.
yarn install
# Purge hardware cache (MacOS specific)
# sync && sudo purge
cd /Users/robbiemckinstry/workspace/pulumi/nodejs-demo
