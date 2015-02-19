package HTML::Entities::Interpolate;

#use strict;
use warnings;

use HTML::Entities;
use Tie::Function;

our $VERSION = '1.06';

# -----------------------------------------------

tie my %Entitize, 'Tie::Function' => \&encode_entities;

sub import{*{caller().'::Entitize'} = \%Entitize};

# -----------------------------------------------

1;

__END__

=head1 NAME

HTML::Entities::Interpolate - Call HTML::Entities::encode_entities, via a hash, within a string

=head1 Synopsis

	use HTML::Entities::Interpolate;

	print qq{<input name="data" value="$Entitize{$old_data}">\n};

	print qq{The full text of the block is <pre>$Entitize{$block}</pre>\n};

	print $Entitize{<<EOF};
	Check out the web page at http://tipjar.com/bin/test?foo=bar&reg=inald
	EOF

=head1 Description

C<HTML::Entities::Interpolate> is a pure Perl module.

=head1 Constructor and initialization

Not needed.

=head1 See Also

L<HTML::Entities>.

=head1 Machine-Readable Change Log

The file Changes was converted into Changelog.ini by L<Module::Metadata::Changes>.

=head1 Repository

L<https://github.com/ronsavage/HTML-Entities-Interpolate>

=head1 Support

L<https://rt.cpan.org/Public/Dist/Display.html?Name=HTML::Entities::Interpolate>.

=head1 Author

David Nicol <davidnicol@gmail.com>.

Maintainer: Ron Savage I<E<lt>ron@savage.net.auE<gt>>.

=cut
