import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure IonChannel where
  ionSpecies : String
  conductance : ℝ
  gatingMechanism : Prop
  gatingMechanismTerm : gatingMechanism

structure IonChannelPackage where
  channel : IonChannel
  selectivity : Prop
  voltageDependence : Prop
  channelClosed : Prop

structure IonChannelEvidence (P : IonChannelPackage) where
  channelClosedTerm : P.channelClosed
  selectivityTerm : P.selectivity
  voltageDependenceTerm : P.voltageDependence

def IonChannelClosed (P : IonChannelPackage) : Prop :=
  P.channelClosed ∧ P.selectivity ∧ P.voltageDependence

theorem ion_channel_closed_from_evidence
    (P : IonChannelPackage) (E : IonChannelEvidence P) :
    IonChannelClosed P :=
  And.intro E.channelClosedTerm (And.intro E.selectivityTerm E.voltageDependenceTerm)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse