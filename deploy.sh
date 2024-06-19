#!/usr/bin/env bash
# Copyright 2024 Hong Yongmin <https://revi.xyz>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#      http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

echo 'Now starting deploy script'

git show --minimal --no-patch --pretty=oneline

echo 'Now copying git defaults'
rm -rf ~/.gitignore
echo 'moving .gitignore'
cp default.gitignore ~/.gitignore
rm -rf ~/.gitconfig
echo 'moving .gitconfig'
cp default.gitconfig ~/.gitconfig
rm -rf ~/.gitaliases
echo 'moving .gitaliases'
cp .gitaliases ~/.gitaliases
echo 'Done!'
