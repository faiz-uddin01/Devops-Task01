#!/bin/bash

# Define variable for the directory
LOGDIR=/home/ec2-user

# Use variable instead of hardcoded path
if [ -f ${LOGDIR}/disk.log ]; then
    cp ${LOGDIR}/disk.log ${LOGDIR}/disk.log.0
fi

du -sk ${LOGDIR}/* > ${LOGDIR}/disk.log
cat ${LOGDIR}/disk.log
