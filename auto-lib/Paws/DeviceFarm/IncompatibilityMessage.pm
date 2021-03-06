package Paws::DeviceFarm::IncompatibilityMessage;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', xmlname => 'message', request_name => 'message', traits => ['Unwrapped','NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::IncompatibilityMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::IncompatibilityMessage object:

  $service_obj->Method(Att1 => { Message => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::IncompatibilityMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

Represents information about incompatibility.

=head1 ATTRIBUTES


=head2 Message => Str

  A message about the incompatibility.


=head2 Type => Str

  The type of incompatibility.

Allowed values include:

=over

=item *

ARN: The ARN.

=item *

FORM_FACTOR: The form factor (for example, phone or tablet).

=item *

MANUFACTURER: The manufacturer.

=item *

PLATFORM: The platform (for example, Android or iOS).

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

