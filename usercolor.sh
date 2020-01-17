#!/bin/bash
whoami | cksum | tr ' ' '\n' | awk '{total = total + $1}END{print (5 + total) % 7}'
