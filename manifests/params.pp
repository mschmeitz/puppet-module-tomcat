class tomcat::params {

    $user           = 'tomcat'
    $group          = 'tomcat' 
    $config_path    = '/etc/tomcat/tomcat.conf'
    $packages       = [ 'tomcat', 'tomcat-webapps' ]
    $service_name   = 'tomcat'
    $service_state  = running


    $tomcat_cfg_loaded = "1"
    $java_home         = "/usr/lib/jvm/jre"
    $cataline_base     = "/usr/share/tomcat"                                       
    $cataline_home     = "/usr/share/tomcat"                                       
    $jasper_home       = "/usr/share/tomcat"                                         
    $cataline_tmpdir   = "/var/cache/tomcat/temp"                                
    $tomcat_user       = "tomcat"                                                    
    $security_manager  = "false"                                                
    $shutdown_wait     = "30"                                                      
    $shutdown_verbose  = "false"                                                
    $catalina_pid      = "/var/run/tomcat.pid"
    
    $xms         = "64m"
    $xmx         = "128m"
    $maxpermsize = "128m"
    
    $deploy_path = "/var/lib/tomcat/webapps"

}