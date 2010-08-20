package String::Utils;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(longest);

use strict;

sub longest {
  my @strings = @_;
  return unless(@strings);
  chomp(@strings);

  my %len_map = ();

  for(@strings) {
    $len_map{length($_)} = $_;
  }
  for my $k(sort{$b <=> $a} keys(%len_map)) {
    return($k);
  }
}

1;
