#!/bin/bash
shift
CUDA_VISIBLE_DEVICES=0 python -m torch.distributed.launch --nproc_per_node=1 test.py --data foo_test.csv --images foo_test/ --results foo_results.csv --checkpoints Contest.pth
