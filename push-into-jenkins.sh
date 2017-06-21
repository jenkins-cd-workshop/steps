#!/bin/bash
set -e

if ! git remote | grep local-jenkins; then
    git remote add local-jenkins ssh://localhost:16022/workflowLibs.git
fi
git push local-jenkins master
