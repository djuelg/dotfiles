#!/bin/bash

sudo mv /usr/bin/file-roller /usr/bin/file-roller-binary
sudo cp ./file-roller-launcher /usr/bin/file-roller
sudo chmod +x /usr/bin/file-roller