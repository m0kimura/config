#!/bin/bash
echo "get pip" \
&&   wget https://bootstrap.pypa.io/get-pip.py \
&&   chmod +x get-pip.py \
&&   ./get-pip.py \
&&   rm get-pip.py