use strict;
use warnings;

use Capture::Tiny 'capture';

use File::Slurper 'read_text';

use Test::Stream -V1;

# ------------------------

my($stdout, $stderr, @result) = capture {`perl scripts/synopsis.pl`};
$result[0]                    = join('', @result);
my($expected)                 = read_text('t/synopsis.html');

ok($result[0] eq $expected);

done_testing();
