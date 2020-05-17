#!/bin/sh

# runs gptrixe on the include files downloaded from the tensorflow site. Adjust the
# pushd command as needed.


pushd ./cpu
gptrixie  --all --castxml="c99" ./include/tensorflow/c/c_api.h -I ./include > c_api.pm6

gptrixie  --all --castxml="c99" ./include/tensorflow/c/c_api_experimental.h -I ./include > c_api_experimental.pm6
