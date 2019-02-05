#!/bin/sh

for i in {1..10}; do
	od -An -N1 -i /dev/random
done
