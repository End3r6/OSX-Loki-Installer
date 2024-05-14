# Copyright 2024 jdswardson
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash
contents=$(cat ./build/version.txt)

# Remove any whitespace or special characters from the contents
# and replace them with underscores
clean_contents=$(echo "$contents" | tr -d '[:space:]' | tr -s '_' )

# Replace periods with hyphens
clean_contents=${clean_contents//./-}

# Append the cleaned contents to the name of the .pkg file
pkg_name="loki-osx_${clean_contents}.pkg"

pkgbuild --root ./build/osx \
 --install-location /usr/local/loki \
 --identifier com.end3r6.loki \
 --scripts ./osx-post  \
 --version 1.0.0 \
 "./packages/${pkg_name}" ;