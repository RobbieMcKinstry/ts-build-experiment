#!/bin/bash
hyperfine \
  --warmup 3 \
  --min-runs 20 \
  --cleanup "./cleanup.sh" \
  --prepare "./experimental/setup-experimental.sh" \
  "yarn --cwd experimental build; pulumi-dev up -y --cwd experimental" \
  --prepare "./control/setup-control.sh" \
  "pulumi-dev up -y --cwd control"
