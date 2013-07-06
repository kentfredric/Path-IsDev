use strict;
use warnings;

package Path::IsDev::Heuristic::DevDirMarker;
BEGIN {
  $Path::IsDev::Heuristic::DevDirMarker::AUTHORITY = 'cpan:KENTNL';
}
{
  $Path::IsDev::Heuristic::DevDirMarker::VERSION = '0.1.0';
}

# ABSTRACT: Determine if a path contains a C<.devdir> file



use parent 'Path::IsDev::Heuristic';

sub files { return qw( .devdir ) }

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Path::IsDev::Heuristic::DevDirMarker - Determine if a path contains a C<.devdir> file

=head1 VERSION

version 0.1.0

=head1 DESCRIPTION

In the event none of the other Heuristics work for you (ie: in the case you're not working
with a Perl CPAN dist, and are in fact working on a project in a different language, where
perl is simply there for build/test purposes), this Heuristic allows explict marking
of a C<developer directory> with a special file: C<.devdir>

=begin MetaPOD::JSON v1.1.0

{
    "namespace":"Path::IsDev::Heuristic::TestDir",
    "interface":"single_class",
    "inherits":"Path::IsDev::Heuristic"
}


=end MetaPOD::JSON

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
