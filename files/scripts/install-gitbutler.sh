#!/usr/bin/env bash
curl -sL https://app.gitbutler.com/downloads/release/linux/x86_64/rpm -o tmp.rpm \
&& dnf install -y ./tmp.rpm \
&& rm ./tmp.rpm