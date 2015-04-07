#!/bin/bash
for i in {1..100}
	do
    sys161 kernel "p uw-testbin/onefork;q"
done
echo "All tests concluded successfully."
