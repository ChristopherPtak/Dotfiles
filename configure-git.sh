#!/bin/sh

git config --global user.name   'Christopher Ptak'
git config --global user.email  'christopher@ptak.io'

git config --global credential.helper 'store'

git config --global pull.rebase 'true'
git config --global fetch.prune 'true'

git config --global diff.algorithm    'minimal'
git config --global diff.colorMoved   'default'
git config --global diff.colorMovedWS 'no'

