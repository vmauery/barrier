cd c:\Users\vmauery
$wsl_ip = (wsl hostname -I).trim()
#NO_TERM="-n -N -T"
ssh -n -N -T -J $wsl_ip -o ExitOnForwardFailure=yes -L 24800:localhost:24800 10.1.1.5
