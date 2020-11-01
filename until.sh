#!/bin/bash

counter=6
until [ $counter -lt 3 ]; do
	let counter-=1
	echo $counter
done
//The until loop code block is the opposite of the while loop code block. It acts on a preset condition, but the code is enclosed between the do and done repeatedly until the condition changes from false to true.
//The execution of the until loop works smoothly, and I did not run into any errors.
