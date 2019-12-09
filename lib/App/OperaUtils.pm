package App::OperaUtils;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict 'subs', 'vars';
use warnings;
use Log::ger;

use App::BrowserUtils ();

our %SPEC;

$SPEC{':package'} = {
    v => 1.1,
    summary => 'Utilities related to the Opera browser',
};

$SPEC{ps_opera} = {
    v => 1.1,
    summary => "List Opera processes",
    args => {
        %App::BrowserUtils::args_common,
    },
};
sub ps_opera {
    App::BrowserUtils::_do_browser('ps', 'opera', @_);
}

$SPEC{pause_opera} = {
    v => 1.1,
    summary => "Pause (kill -STOP) Opera",
    args => {
       %App::BrowserUtils::args_common,
    },
};
sub pause_opera {
    App::BrowserUtils::_do_browser('pause', 'opera', @_);
}

$SPEC{unpause_opera} = {
    v => 1.1,
    summary => "Unpause (resume, continue, kill -CONT) Opera",
    args => {
        %App::BrowserUtils::args_common,
    },
};
sub unpause_opera {
    App::BrowserUtils::_do_browser('unpause', 'opera', @_);
}

$SPEC{opera_is_paused} = {
    v => 1.1,
    summary => "Check whether Opera is paused",
    description => <<'_',

Opera is defined as paused if *all* of its processes are in 'stop' state.

_
    args => {
        %App::BrowserUtils::args_common,
        %App::BrowserUtils::argopt_quiet,
    },
};
sub opera_is_paused {
    App::BrowserUtils::_do_browser('is_paused', 'opera', @_);
}

$SPEC{terminate_opera} = {
    v => 1.1,
    summary => "Terminate  (kill -KILL) Opera",
    args => {
        %App::BrowserUtils::args_common,
    },
};
sub terminate_opera {
    App::BrowserUtils::_do_browser('terminate', 'opera', @_);
}

1;
# ABSTRACT:

=head1 SYNOPSIS

=head1 DESCRIPTION

This distribution includes several utilities related to the Opera browser:

#INSERT_EXECS_LIST


=head1 SEE ALSO

Some other CLI utilities related to Opera: L<dump-opera-history> (from
L<App::DumpOperaHistory>).

L<App::ChromeUtils>

L<App::FirefoxUtils>

L<App::VivaldiUtils>

L<App::BrowserUtils>
