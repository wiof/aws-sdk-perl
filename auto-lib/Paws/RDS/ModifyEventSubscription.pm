
package Paws::RDS::ModifyEventSubscription;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyEventSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscriptionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyEventSubscription - Arguments for method ModifyEventSubscription on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyEventSubscription on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method ModifyEventSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyEventSubscription.

As an example:

  $service_obj->ModifyEventSubscription(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  A Boolean value; set to B<true> to activate the subscription.


=head2 EventCategories => ArrayRef[Str]

  A list of event categories for a SourceType that you want to subscribe
to. You can see a list of the categories for a given SourceType in the
Events topic in the Amazon RDS User Guide or by using the
B<DescribeEventCategories> action.


=head2 SnsTopicArn => Str

  The Amazon Resource Name (ARN) of the SNS topic created for event
notification. The ARN is created by Amazon SNS when you create a topic
and subscribe to it.


=head2 SourceType => Str

  The type of source that will be generating the events. For example, if
you want to be notified of events generated by a DB instance, you would
set this parameter to db-instance. if this value is not specified, all
events are returned.

Valid values: db-instance | db-parameter-group | db-security-group |
db-snapshot


=head2 B<REQUIRED> SubscriptionName => Str

  The name of the RDS event notification subscription.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyEventSubscription in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

