package WebService::CityGrid::Ads::Web;

our $VERSION = 0.01;

use Any::Moose;

has 'publisher'     => ( is => 'ro', isa => 'Str', required => 1 );
has 'div_id'        => ( is => 'ro', isa => 'Str', required => 1 );
has 'collection_id' => ( is => 'ro', isa => 'Str', required => 1 );
has 'what'          => ( is => 'ro', isa => 'Str', required => 1 );
has 'where'         => ( is => 'ro', isa => 'Str', required => 1 );
has 'width'         => ( is => 'ro', isa => 'Str', required => 1 );
has 'height'        => ( is => 'ro', isa => 'Str', required => 1 );
#has 'lat'           => ( is => 'ro', isa => 'Str', required => 1 );
#has 'lon'           => ( is => 'ro', isa => 'Str', required => 1 );

use constant DEBUG => $ENV{CG_DEBUG} || 0;


our $Loader_script =
'<script type="text/javascript" src="http://static.citygridmedia.com/ads/scripts/v2/loader.js"></script>';

=cut

<div id="sidebar_ad_slot"></div>
<script type="text/javascript" src="http://static.citygridmedia.com/ads/scripts/v2/loader.js"></script>
<script type="text/javascript">
  new CityGrid.Ads('sidebar_ad_slot', {
    collection_id: 'web-001-630x100',
                                     publisher: 'citysearch',
                                     what: 'sushi',
                                     where: '90069',
                                     lat: 34.088188,
                                     lon: -118.37205,
                                     width: 630,
                                     height: 100
  });
</script>

=cut


sub javascript {
    my $self = shift;

    my $js = <<'JS';
<script type="text/javascript">
  new CityGrid.Ads('%s', {
    collection_id: '%s',
    publisher: '%s',
    what: '%s',
    where: '%s',
    width: %s,
    height: %s
  });
</script>
JS

    $js = sprintf($js,
                  $self->div_id,
                  $self->collection_id,
                  $self->publisher,
                  $self->what,
                  $self->where,
                  $self->width,
                  $self->height);

    return $js;
}



1;
__END__


=head1 NAME

WebService-CityGrid-Ads-Web - CityGrid web ads interface

=head1 SYNOPSIS

  use WebService-CityGrid-Ads-Web;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for WebService-CityGrid-Ads-Web, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Fred Moyer, E<lt>phred@redhotpenguin.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 by Fred Moyer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
