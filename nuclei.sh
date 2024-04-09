#!/bin/bash

 nuclei -as -l urls.txt -severity critical,high,low,medium | tee op/nuclei-op/nuclei_op.txt 
