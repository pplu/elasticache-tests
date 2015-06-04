use Cache::Memcached;
use strict;
use warnings;


my $self = Cache::Memcached->new(
  servers => [ 'qls-ca-1p3v84406qcba.efuxle.cfg.usw2.cache.amazonaws.com:11211' ],
);

#my $x = $c->run_command('configversion');
#my $x = $c->run_command('stat');

use Data::Dumper;

#for my $i (1 .. 1000) {
#  $self->set("key_$i", "value_$i " . ('x' x 5000));
#}


    # http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/AutoDiscovery.AddingToYourClientLibrary.html
    my $sock = $self->sock_to_host($self->{'_single_sock'});
    my $line = 'configversion';
    my $res = $self->_write_and_read($sock, $line);
    return () if $res =~ /(?:ERROR)\r\n$/;
    $res = $self->_write_and_read($sock);
    print Dumper($res);


#for my $i (1 .. 1000) {
#  die "key_$i didn't have a value" if (not $self->get("key_$i"));
#}
