#!/bin/bash

# lists name and email of all contributors of repo.

git log --all --format='%aN <%cE>' | sort -u
