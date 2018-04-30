#!/usr/bin/env bash
cd tchome && gunicorn -b 0.0.0.0:7500 -w 4 wsgi:application