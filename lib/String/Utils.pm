package String::Utils;
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(longest);

use strict;

sub longest {
  return unless(my @strings = @_);
  chomp(@strings);

  my %len_map = ();

  map{ $len_map{length($_)} = $_ } @strings;

  for my $k(sort{$b <=> $a} keys(%len_map)) {
    return $k;
  }
}

1;
