#!/usr/bin/env bash
curl -sL $(\
    curl -s https://api.github.com/repos/sinelaw/fresh/releases/latest \
    | grep "browser_download_url.*\.$(uname -m)\.rpm" \
    | cut -d '"' -f 4\
    ) -o tmp.rpm \
&& dnf install -y ./tmp.rpm \
&& rm ./tmp.rpm