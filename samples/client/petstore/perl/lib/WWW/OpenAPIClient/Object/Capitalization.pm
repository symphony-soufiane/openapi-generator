
=begin comment

OpenAPI Petstore

This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Object::Capitalization;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ( "Class::Accessor", "Class::Data::Inheritable" );

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

OpenAPI Petstore

This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata( 'attribute_map'        => {} );
__PACKAGE__->mk_classdata( 'openapi_types'        => {} );
__PACKAGE__->mk_classdata( 'method_documentation' => {} );
__PACKAGE__->mk_classdata( 'class_documentation'  => {} );

# new object
sub new {
    my ( $class, %args ) = @_;

    my $self = bless {}, $class;

    foreach my $attribute ( keys %{ $class->attribute_map } ) {
        my $args_key = $class->attribute_map->{$attribute};
        $self->$attribute( $args{$args_key} );
    }

    return $self;
}

# return perl hash
sub to_hash {
    return decode_json( JSON->new->convert_blessed->encode(shift) );
}

# used by JSON for serialization
sub TO_JSON {
    my $self  = shift;
    my $_data = {};
    foreach my $_key ( keys %{ $self->attribute_map } ) {
        if ( defined $self->{$_key} ) {
            $_data->{ $self->attribute_map->{$_key} } = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ( $self, $hash ) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ( $_key, $_type ) = each %{ $self->openapi_types } ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ( $_type =~ /^array\[/i ) {    # array
            my $_subclass = substr( $_type, 6, -1 );
            my @_array = ();
            foreach my $_element ( @{ $hash->{$_json_attribute} } ) {
                push @_array, $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \@_array;
        }
        elsif ( exists $hash->{$_json_attribute} )
        {                                 #hash(model), primitive, datetime
            $self->{$_key} =
              $self->_deserialize( $_type, $hash->{$_json_attribute} );
        }
        else {
            $log->debugf( "Warning: %s (%s) does not exist in input hash\n",
                $_key, $_json_attribute );
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ( $self, $type, $data ) = @_;
    $log->debugf( "deserializing %s with %s", Dumper($data), $type );

    if ( $type eq 'DateTime' ) {
        return DateTime->from_epoch( epoch => str2time($data) );
    }
    elsif ( grep( /^$type$/, ( 'int', 'double', 'string', 'boolean' ) ) ) {
        return $data;
    }
    else {    # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}

__PACKAGE__->class_documentation(
    {
        description => '',
        class       => 'Capitalization',
        required    => [],                 # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'small_camel' => {
            datatype    => 'string',
            base_name   => 'smallCamel',
            description => '',
            format      => '',
            read_only   => '',
        },
        'capital_camel' => {
            datatype    => 'string',
            base_name   => 'CapitalCamel',
            description => '',
            format      => '',
            read_only   => '',
        },
        'small_snake' => {
            datatype    => 'string',
            base_name   => 'small_Snake',
            description => '',
            format      => '',
            read_only   => '',
        },
        'capital_snake' => {
            datatype    => 'string',
            base_name   => 'Capital_Snake',
            description => '',
            format      => '',
            read_only   => '',
        },
        'sca_eth_flow_points' => {
            datatype    => 'string',
            base_name   => 'SCA_ETH_Flow_Points',
            description => '',
            format      => '',
            read_only   => '',
        },
        'att_name' => {
            datatype    => 'string',
            base_name   => 'ATT_NAME',
            description => 'Name of the pet ',
            format      => '',
            read_only   => '',
        },
    }
);

__PACKAGE__->openapi_types(
    {
        'small_camel'         => 'string',
        'capital_camel'       => 'string',
        'small_snake'         => 'string',
        'capital_snake'       => 'string',
        'sca_eth_flow_points' => 'string',
        'att_name'            => 'string'
    }
);

__PACKAGE__->attribute_map(
    {
        'small_camel'         => 'smallCamel',
        'capital_camel'       => 'CapitalCamel',
        'small_snake'         => 'small_Snake',
        'capital_snake'       => 'Capital_Snake',
        'sca_eth_flow_points' => 'SCA_ETH_Flow_Points',
        'att_name'            => 'ATT_NAME'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;
