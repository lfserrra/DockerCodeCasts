#!/bin/bash

source /etc/apache2/envvars

apache2 -D FOREGROUND -f /etc/apache2/apache2.conf
