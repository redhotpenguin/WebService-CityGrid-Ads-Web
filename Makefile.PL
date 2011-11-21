#/usr/bin/perl

use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'WebService-CityGrid-Ads-Web',
    VERSION_FROM => 'lib/WebService/CityGrid/Ads/Web.pm',
    PREREQ_PM    => { 'Any::Moose' => 0 },
    ABSTRACT     => 'abstract',
    AUTHOR       => 'Fred Moyer <fred@slwifi.com>'
);
