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

FROM nikhilk/os
MAINTAINER Nikhil Kothari

# IPython and related packages
RUN apt-get install --no-install-recommends -y -q \
    ipython ipython-notebook pandoc \
    libzmq-dev

# Startup script
ADD start.sh /start.sh
RUN chmod +x /start.sh

# Container configuration
EXPOSE 8080
ENTRYPOINT [ "/start.sh" ]

