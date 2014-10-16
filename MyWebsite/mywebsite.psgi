use strict;
use warnings;

use MyWebsite;

my $app = MyWebsite->apply_default_middlewares(MyWebsite->psgi_app);
$app;

