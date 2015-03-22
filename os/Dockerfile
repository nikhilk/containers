# Copyright 2015 Nikhil Kothari - https://github.com/nikhilk/containers
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#
# Installs ijs (along with IPython) to provide a fully packaged setup for
# running javascript notebooks on top of node.js.
#

FROM debian:jessie
MAINTAINER Nikhil Kothari

# Core packages
RUN apt-get update -y
RUN apt-get install --no-install-recommends -y -q \
    curl g++ make wget unzip bzip2 git \
    nodejs-legacy npm

# Container configuration
VOLUME [ "/data" ]
ENTRYPOINT [ "/bin/bash" ]

