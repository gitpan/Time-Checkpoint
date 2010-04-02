#!/usr/bin/perl

use warnings;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'          => 'Time::Checkpoint',
    'VERSION'       => '0.3',
    'PREREQ_PM'     => {
        'Carp'             => 0,
        'Params::Validate' => 0,
        'Test::More'       => 0,
        'Time::HiRes'      => 0, # some *very* fast machines have sub-one-second checkpoints
    },
    'dist' => {
        'COMPRESS' => 'gzip -9f',
        'SUFFIX'   => 'gz',
    },
    'AUTHOR'   => 'Alex Avriette (alex@cpan.org)',
    'ABSTRACT' => 'Time-based checkpoints and deltas for performance analysis',
);

