package ONVIF::Analytics::Types::WhiteBalanceOptions;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Mode_of :ATTR(:get<Mode>);
my %YrGain_of :ATTR(:get<YrGain>);
my %YbGain_of :ATTR(:get<YbGain>);

__PACKAGE__->_factory(
    [ qw(        Mode
        YrGain
        YbGain

    ) ],
    {
        'Mode' => \%Mode_of,
        'YrGain' => \%YrGain_of,
        'YbGain' => \%YbGain_of,
    },
    {
        'Mode' => 'ONVIF::Analytics::Types::WhiteBalanceMode',
        'YrGain' => 'ONVIF::Analytics::Types::FloatRange',
        'YbGain' => 'ONVIF::Analytics::Types::FloatRange',
    },
    {

        'Mode' => 'Mode',
        'YrGain' => 'YrGain',
        'YbGain' => 'YbGain',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::WhiteBalanceOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
WhiteBalanceOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Mode


=item * YrGain


=item * YbGain




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::WhiteBalanceOptions
   Mode => $some_value, # WhiteBalanceMode
   YrGain =>  { # ONVIF::Analytics::Types::FloatRange
     Min =>  $some_value, # float
     Max =>  $some_value, # float
   },
   YbGain =>  { # ONVIF::Analytics::Types::FloatRange
     Min =>  $some_value, # float
     Max =>  $some_value, # float
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

