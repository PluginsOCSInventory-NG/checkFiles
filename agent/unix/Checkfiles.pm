# Plugin "CheckFiles" OCSInventory

package Ocsinventory::Agent::Modules::Checkfiles;

use POSIX qw(strftime);

sub new {

    my $name="checkfiles"; # Name of the module

    my (undef,$context) = @_;
    my $self = {};

    #Create a special logger for the module
    $self->{logger} = new Ocsinventory::Logger ({
        config => $context->{config}
    });
    $self->{logger}->{header}="[$name]";
    $self->{context}=$context;
    $self->{structure}= {
        name => $name,
        start_handler => undef,    #or undef if don't use this hook
        prolog_writer => undef,    #or undef if don't use this hook
        prolog_reader => undef,    #or undef if don't use this hook
        inventory_handler => $name."_inventory_handler",    #or undef if don't use this hook
        end_handler => undef       #or undef if don't use this hook
    };
    bless $self;
}

######### Hook methods ############
sub checkfiles_inventory_handler {

    my $self = shift;
    my $logger = $self->{logger};
    my $common = $self->{context}->{common};
    

    $logger->debug("Yeah you are in checkfiles_inventory_handler:)");
    
    my $datetime;
    my $content;
    # complete below variable w/ any file paths (multiple allowed)
    my @paths = ('/path/to/test.txt', '/path/to/test2.txt');
    # set below variable to 1 for content retrieval or 0 for presence only
    my $getContent = 0;

    foreach (@paths) {
        $datetime = strftime('%Y-%m-%d %H:%M:%S', localtime);
        if (-f $_) {
            if ($getContent) {
                $logger->debug("Getting content for file : $_");
                $content = do {
                local $/ = undef;
                open my $fh, "<", $_;
                <$fh>;
                };
            } else {
                $content = 'Not retrieved';
            }

            $exists = 'Yes';
        

        } else {
            $exists = 'No';
        }

        push @{$common->{xmltags}->{CHECKFILES}},
        {
            PATH => [$_],
            CONTENT => [$content],
            EXIST => [$exists],
            LAST_CHECK => [$datetime],

        };

        $datetime = undef;
        $content = undef;

    }



    $logger->debug("Finishing checkfiles_inventory_handler ..");
}

1;
