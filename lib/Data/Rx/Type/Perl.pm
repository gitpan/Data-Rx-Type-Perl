use strict;
use warnings;
package Data::Rx::Type::Perl;
our $VERSION = '0.001';
# ABSTRACT: experimental / perl types

use Data::Rx::Type::Perl::Obj;


sub type_plugins {
  return qw(Data::Rx::Type::Perl::Obj);
}

1;

__END__
=head1 NAME

Data::Rx::Type::Perl - experimental / perl types

=head1 VERSION

version 0.001

=head1 SYNOPSIS

  use Data::Rx;
  use Data::Rx::Type::Perl;
  use Test::More tests => 2;

  my $rx = Data::Rx->new({
    prefix  => {
      perl => 'tag:codesimply.com,2008:rx/perl/',
    },
    type_plugins => [ Data::Rx::Type::Perl->type_plugins ],
  });

  my $isa_rx = $rx->make_schema({
    type       => '/perl/obj',
    isa        => 'Data::Rx',
  });

  ok($isa_rx->check($rx),   "a Data::Rx object isa Data::Rx /perl/obj");
  ok(! $isa_rx->check( 1 ), "1 is not a Data::Rx /perl/obj");

=head1 AUTHOR

  Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

