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
# Installs IPython3 (aka Jupyter) and its dependencies.
#

FROM nikhilk/os
MAINTAINER Nikhil Kothari

# Install conda and various python packages
RUN wget -O ~/miniconda.sh \
      http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh && \
    chmod +x ~/miniconda.sh && \
    ~/miniconda.sh -b -f && \
    ~/miniconda/bin/conda update --all -y &&\
    ~/miniconda/bin/conda install -y ipython \
      jinja2 tornado pyzmq jsonschema \
      requests mock \
      numpy scipy pandas scikit-learn \
      matplotlib seaborn && \
    rm ~/miniconda.sh && \
    ~/miniconda/bin/conda clean -y -t && \
    cd ~/miniconda && \
    find . -type d -name tests | xargs rm -rf
 
# Startup script
ADD start.sh /start.sh
RUN chmod +x /start.sh

# Container configuration
ENV PATH=/root/miniconda/bin:$PATH
EXPOSE 8080
ENTRYPOINT [ "/start.sh" ]

