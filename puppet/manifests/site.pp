Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin:/usr/local/bin" }

node 'ewa-dev.oucs.ox.ac.uk', 'ewa.vm' {
    include ewa
}
