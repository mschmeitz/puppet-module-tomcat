define tomcat::deploy (

    $deploy_path  = $::tomcat::deploy_path,
    $deploy_url,
    $md5_checksum,

) {

    file { "${deploy_path}/${name}.war" : 
        source          => $deploy_url,
        owner           => $::tomcat::user,
        group           => $::tomcat::group,
        notify          => Exec['purge_deployed_war'],
        checksum        => md5, 
        checksum_value  => $md5_checksum,

    }

    exec { "purge_deployed_war" :
        command      => 'rm -f ${deploy_path}/${name}.war',
        path         => ['/usr/bin', 'usr/sbin', '/bin'],
        refreshonly  => true,
        notify       => Service[$::tomcat::service_name],
    }
 
   notify { "${md5_checksum}": }   
}