#!/bin/bash

for i in {0..10}; do
	python3 test_gen.py > sample_$i.dat-s
done

