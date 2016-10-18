# Generated by nostromo v0.5.0
# ----------------------------

module "db" {
    source                  =       "git::https://stash.synchronoss.net/scm/terraform/os-server-v2.git?ref=v0.6"

    # Generic Input Variables
    net_name1               =       "Analytics_Network"

    # Public IP variables
    fip_count               =       0
    pool_name               =       "External_Floating_IP_Network"

    # Server variables
    servername              =       "mariadb"
    project_name            =       "Analytics"
    image                   =       "CentOS-6.7-x86_64"
    flavor                  =       "m1.xlarge"
    keyname                 =       "velocity"
    ingress-sg              =       "default"

    # Chef Input Variables
    CHEF_SERVER             =       "https://chef-pabet-redirect.sncrcorp.net:443"
#    CHEF_PROXY              =       ""
    CHEF_ENV                =       "velbda-poc"
#    CHEF_ROLES              =       ""
    CHEF_ORG                =       "vel-bda"

    # Network Input Varaibles
    DOMAIN                  =       "bda.poc.velocity-va.sncrcorp.net"
    NODENAME                =       "mariadb"

     # DNS servers
    NAME_SERVER1            =       "10.48.0.31"
    NAME_SERVER2            =       "10.48.0.32"

    # Additional 1 volume

    server_2vol_count       =       2
    mountpoint1             =       "/opt"
    device_name1            =       "/dev/xvp"
    device_name2            =       "/dev/xvq"
    volume_size1            =       50
    volume_size2            =       500

    # PDNS server URL

    pdns_server_url         =       "http://10.48.0.31:8081"
}
