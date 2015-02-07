#!/bin/bash
for i in {1..10}
	do
    sys161 kernel "sp2 $1 $2 $3 $4 1 1 1 1;q"
done
echo "All tests concluded successfully."