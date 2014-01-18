# -*- perl -*-
use Test::More;

BEGIN { use_ok( 'Convert::Bencode', qw(bdecode bencode) ); }

my $test_string = "d5:filesed5:flagsd20:min_request_intervali1800eee";
my $hashref = bdecode($test_string);

ok (defined $hashref, 'bdecode() returned regardless');
is (ref($hashref), 'HASH', 'valid hashref');

done_testing();
