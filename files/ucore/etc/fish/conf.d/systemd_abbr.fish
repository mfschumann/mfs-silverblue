abbr -a -- s   systemctl
abbr -a -- j   journalctl
abbr -a -- sdr 'systemctl daemon-reload'

function r --wraps='systemctl restart' --argument-names unit
    systemctl daemon-reload
    systemctl restart $unit
    journalctl -fu $unit
end
