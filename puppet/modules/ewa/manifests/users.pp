class ewa::users () {
    group {'admin':
        ensure => present,
    }

    $global_accounts = hiera_hash('accounts')

    $accounts = {
        andrewhemming => $global_accounts['andrewhemming'],
        kevinmcglynn => $global_accounts['kevinmcglynn'],
        richardb => $global_accounts['richardb'],
        tedkoterwas => $global_accounts['tedkoterwas'],
    }

    create_resources('account', $accounts)

    
}