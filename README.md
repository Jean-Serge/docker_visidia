# docker_visidia
This git is for building a docker launching Visidia.

The container is debian-based and run the Visidia jar's present in the repository with Java7.
it will link the workspace directory  with the container's workspace.


The print is possible by sharing your ~/.Xauthority with the container.

This container works with Archlinux.

Installation
============
Specify your main user uid and gid instead of those present in the Dockerfile.
Then run the script visidia.bash.
