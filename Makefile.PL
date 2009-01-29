
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Data-Rx-Type-Perl',
  NAME      => 'Data::Rx::Type::Perl',
  AUTHOR    => 'Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>',
  ABSTRACT  => 'experimental / perl types',
  VERSION   => '0.001',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Scalar::Util" => '0',
    "Data::Rx" => '0.004',
  },
);
