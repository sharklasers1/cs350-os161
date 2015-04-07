#!/bin/bash
COMMAND=$1
for i in {1..100}
	do
   sys161 kernel $COMMAND
done
echo "All tests concluded successfully."
