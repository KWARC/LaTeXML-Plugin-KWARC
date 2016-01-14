#======================================================================
# Makefile Maker for LaTeXML::MathSyntax
# m.kohlhase@jacobs-university.de, d.ginev@jacobs-university.de
#======================================================================
use ExtUtils::MakeMaker;
use strict;
use warnings;

#======================================================================
# Use "perl Makefile.PL <options>"
#======================================================================
WriteMakefile(
  NAME => 'LaTeXML::Plugin::KWARC',
  AUTHOR => 'Michael Kohlhase <m.kohlhase@jacobs-university.de>',
  ABSTRACT => "A LaTeXML extension for KWARC macros",
  VERSION => "0.2",
  PREREQ_PM => { 
    'LaTeXML'=>'0.8.1',
  },
  (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
    'meta-spec' => { version => 2 },
      resources => {
        repository => {
          type => 'git',
          url => 'https://github.com/KWARC/LaTeXML-Plugin-KWARC.git',
          web => 'https://github.com/KWARC/LaTeXML-Plugin-KWARC',
        }}})
  : ()),
);
