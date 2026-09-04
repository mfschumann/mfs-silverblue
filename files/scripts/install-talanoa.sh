#!/usr/bin/env bash
curl -sL https://releases.talanoa.email/download/rpm -o tmp.rpm \
&& dnf install -y ./tmp.rpm \
&& rm ./tmp.rpm
