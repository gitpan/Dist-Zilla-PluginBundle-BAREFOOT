
use strict;
use warnings;

use 5.012;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Dist::Zilla configuration the way BAREFOOT does it",
  "AUTHOR" => "Buddy Burden <barefoot\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Temp" => 0,
    "Path::Class" => 0,
    "Test::Command" => "0.10",
    "Test::Most" => "0.25"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dist-Zilla-PluginBundle-BAREFOOT",
  "EXE_FILES" => [],
  "LICENSE" => "artistic_2",
  "NAME" => "Dist::Zilla::PluginBundle::BAREFOOT",
  "PREREQ_PM" => {
    "Dist::Zilla" => "4.3",
    "Dist::Zilla::Plugin::Bugtracker" => "1.102670",
    "Dist::Zilla::Plugin::CheckChangesHasContent" => 0,
    "Dist::Zilla::Plugin::CheckExtraTests" => 0,
    "Dist::Zilla::Plugin::CheckPrereqsIndexed" => "0.002",
    "Dist::Zilla::Plugin::CopyFilesFromBuild" => 0,
    "Dist::Zilla::Plugin::GithubMeta" => "0.10",
    "Dist::Zilla::Plugin::InsertCopyright" => "0.001",
    "Dist::Zilla::Plugin::MetaNoIndex" => 0,
    "Dist::Zilla::Plugin::MinimumPerl" => 0,
    "Dist::Zilla::Plugin::OurPkgVersion" => "0.001008",
    "Dist::Zilla::Plugin::PodWeaver" => 0,
    "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0.120051",
    "Dist::Zilla::Plugin::ReadmeFromPod" => 0,
    "Dist::Zilla::Plugin::Test::PodSpelling" => "2.001002",
    "Dist::Zilla::Plugin::Test::Version" => 0,
    "Dist::Zilla::PluginBundle::Git" => "2.013",
    "List::MoreUtils" => 0,
    "Method::Signatures::Modifiers" => 0,
    "MooseX::Declare" => 0,
    "MooseX::Has::Sugar" => 0,
    "MooseX::Types::Moose" => 0,
    "Pod::Elemental::Transformer::List" => "0.101620",
    "Pod::Weaver" => "3.101635",
    "Pod::Weaver::Config::Assembler" => 0,
    "Pod::Weaver::Plugin::WikiDoc" => 0,
    "Pod::Weaver::Section::Support" => "1.001",
    "Pod::Wordlist::hanekomu" => "1.113620",
    "autodie" => "2.00",
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.03_03",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



