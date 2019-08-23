function userinfo()

{


        echo "Current uesrname:" $USER
        echo "User home directory path:"$HOME

}


function ipinfo()
{

        IP_VAR= `ifconfig eth0 | grep "inet addr" | tr -s " " ":" | \
        cut -f4 -d ":"

        DGW_VAR= `ip route show | grep  "default" | tr -s " " ":" | \
        cut -f3 -d ":"
        echo "IP ADDRESS:" $IP_VAR
        echo "DEFAULT GATEWAY:" $DGW_VAR
        cat /etc/resolv.conf | grep "nameserver" | grep -v "#"

}

clear
userinfo
ipinfo
#ip var strips Ip address of etho0, ` stores the result of the command in the variable, tr -s """:" translate spaces to colons
#dgw var is a default gateway variable, the delimitor search for field 3
~                                                                          
                
