#!/bin/bash

for i in {0..10}; do
	python3 ../test_gen.py < options.in > sample_$i.dat-s
done

