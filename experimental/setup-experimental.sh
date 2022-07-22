#!/usr/local/bin/bash

cd /Users/robbiemckinstry/workspace/pulumi/nodejs-demo/experimental
pulumi stack select experimental
# Remove node modules if they exist.
rm -r node_modules || true
# Remove the precompiled code if it exists.
rm dist/out.js || true
# Remove the yarn lockfile if it exists.
rm yarn.lock
# Linl in dev @pulumi/pulumi
yarn link @pulumi/pulumi
# Install deps as normal.
yarn install
# Purge hardware cache (MacOS specific)
# sync && sudo purge
cd /Users/robbiemckinstry/workspace/pulumi/nodejs-demo
