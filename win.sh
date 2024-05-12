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

npm exec msi-packager \
 ./build/win \
 ./packages/loki-windows.msi\
 --name Loki \
 --version 1.0.0 \
 --manufacturer com.end3r6.loki \
 --icon ../Images/Icon_01.jpeg \
 --executable loki.exe \
 -u cb68b813-2416-48a9-9dac-1a13cb693104;
