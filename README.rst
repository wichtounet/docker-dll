docker-dll
##########

Docker image for the Deep Learning Library (DLL) project

This docker image helps using the dll library by not having to install anything
beside the library itself (and docker).

Installation
############

$ git clone --recursive https://github.com/wichtounet/docker-dll.git
$ docker build -t wichtounet/dll .

Usage
#####

To use the library, you must create a dll.conf file and mount the folder where
the file in the /dll/data volume. For instance:

$ docker run -v $(pwd)/rbm_mnist/:/dll/data/ wichtounet/dll

Several examples are available in this repository
