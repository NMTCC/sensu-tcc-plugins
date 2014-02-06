## This is a template manifest for the auto-manifester

  sensu::check { "NAME":
    type => 'TYPE',
    command => '/etc/sensu/plugins/sensu-FROM-plugins/plugins/PATHARGS',
    subscribers => 'CHAN',
    standalone => false,
    interval => INT,
  }
