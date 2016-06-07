package ONVIF::Analytics::Types::Rectangle;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS = 'ONVIF::Analytics::Types::Rectangle::_Rectangle::XmlAttr';

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}



# There's no variety - empty complexType
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

__PACKAGE__->_factory();


package ONVIF::Analytics::Types::Rectangle::_Rectangle::XmlAttr;
use base qw(SOAP::WSDL::XSD::Typelib::AttributeSet);

{ # BLOCK to scope variables

my %bottom_of :ATTR(:get<bottom>);
my %top_of :ATTR(:get<top>);
my %right_of :ATTR(:get<right>);
my %left_of :ATTR(:get<left>);

__PACKAGE__->_factory(
    [ qw(
        bottom
        top
        right
        left
    ) ],
    {

        bottom => \%bottom_of,

        top => \%top_of,

        right => \%right_of,

        left => \%left_of,
    },
    {
        bottom => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        top => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        right => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        left => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
    }
);

} # end BLOCK




1;


=pod

=head1 NAME

ONVIF::Analytics::Types::Rectangle

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Rectangle from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over



=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

,



=head2 attr

NOTE: Attribute documentation is experimental, and may be inaccurate.
See the correspondent WSDL/XML Schema if in question.

This class has additional attributes, accessibly via the C<attr()> method.

attr() returns an object of the class ONVIF::Analytics::Types::Rectangle::_Rectangle::XmlAttr.

The following attributes can be accessed on this object via the corresponding
get_/set_ methods:

=over

=item * bottom



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * top



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * right



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * left



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.


=back




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

