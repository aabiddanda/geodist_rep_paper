#!/bin/python3

# Including all of the different snakefiles
include: 'snakefiles/geodist.snake'
include: 'snakefiles/subsets.snake'
include: 'snakefiles/plotting.snake'

    
rule download_data_w_geodist:
  output:
    directory("data/")
  shell:
    """
      wget -O data_w_geodist.tar.gz  https://www.dropbox.com/s/hno1so98qcghsli/data_w_geodist.tar.gz?dl=0
      tar -xvf data_w_geodist.tar.gz
    """
