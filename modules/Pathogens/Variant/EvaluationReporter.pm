package Pathogens::Variant::EvaluationReporter;
use Moose;
use Data::Dumper;
extends 'Pathogens::Variant::Root';
use namespace::autoclean;



has 'failed_quality' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_quality => 'inc'  
    }
);

has 'failed_map_quality' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_map_quality => 'inc'
    }
);

has 'failed_depth' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_depth => 'inc'
    }
);

has 'failed_depth_forward' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_depth_forward => 'inc'
    }
);

has 'failed_depth_reverse' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_depth_reverse => 'inc'
    }
);

has 'failed_ratio_forward' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_ratio_forward => 'inc'
    }
);

has 'failed_ratio_reverse' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_ratio_reverse => 'inc'
    }
);

has 'failed_af1_allele_frequency' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_af1_allele_frequency => 'inc'
    }
);

has 'failed_strand_bias' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_strand_bias => 'inc'
    }
);

has 'failed_base_quality_bias' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_base_quality_bias => 'inc'
    }
);

has 'failed_map_bias' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_map_bias => 'inc'
    }
);

has 'failed_tail_distance_bias' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_failed_tail_distance_bias => 'inc'
    }
);

has 'skipped_indel' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_skipped_indel => 'inc'
    }
);

has 'heterozygous_calls' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_heterozygous_calls => 'inc'
    }
);

has 'accepted_snp_calls' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_counter_accepted_snp_calls => 'inc'
    }
);

has 'total_number_of_event_evaluations' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_total_number_of_event_evaluations => 'inc'
    }
);

has 'skipped_vcf_duplicate_entry_artifact' => ( 
      is => 'ro' 
    , isa => 'Int', 
    , default => 0
    , traits  => ['Counter']
    , handles => {
          inc_skipped_vcf_duplicate_entry_artifact => 'inc'
    }
);

sub dump {
    my $self = shift;
    return Dumper $self;
} 

__PACKAGE__->meta->make_immutable;

1;