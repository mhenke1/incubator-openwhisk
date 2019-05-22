#!/bin/bash

# Licensed to the Apache Software Foundation (ASF) under one or more contributor
# license agreements; and to You under the Apache License, Version 2.0.

./copyJMXFiles.sh

echo "******MH"
ls -la /root
cat /root/jmxremote.access
cat /root/jmxremote.password
echo "******MH END

export INVOKER_OPTS
INVOKER_OPTS="$INVOKER_OPTS $(./transformEnvironment.sh)"

exec invoker/bin/invoker "$@"
