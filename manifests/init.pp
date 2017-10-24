class tomcat(

    $user           = $tomcat::params::user,
    $group          = $tomcat::params::group,
    $config_path    = $tomcat::params::config_path,
    $packages       = $tomcat::params::packages,
    $service_name   = $tomcat::params::service_name,
    $service_state  = $tomcat::params::service_state,

    $tomcat_cfg_loaded = $tomcat::params::tomcat_cfg_loaded,
    $java_home         = $tomcat::params::java_home,
    $cataline_base     = $tomcat::params::cataline_base,                                
    $cataline_home     = $tomcat::params::cataline_home,                  
    $jasper_home       = $tomcat::params::jasper_home,                             
    $cataline_tmpdir   = $tomcat::params::cataline_tmpdir,                        
    $tomcat_user       = $tomcat::params::tomcat_user,                                  
    $security_manager  = $tomcat::params::tomcat_user,                                                
    $shutdown_wait     = $tomcat::params::shutdown_wait,                                                      
    $shutdown_verbose  = $tomcat::params::shutdown_verbose,                                                
    $catalina_pid      = $tomcat::params::catalina_pid,
    
    $xms         = $tomcat::params::xms,
    $xmx         = $tomcat::params::xmx,
    $maxpermsize = $tomcat::params::maxpermsize

) inherits tomcat::params {

    notify { "***** EXECUTING TOMCAT INSTALL AND STARTUP *****": }
    
    include tomcat::install
    include tomcat::config
    include tomcat::service
    
}
