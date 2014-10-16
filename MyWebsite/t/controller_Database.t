use strict;
use warnings;
use Test::More;


use Catalyst::Test 'MyWebsite';
use MyWebsite::Controller::Database;

ok( request('/database')->is_success, 'Request should succeed' );
done_testing();
