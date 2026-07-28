import HautevilleHouse.BiochemistryMembraneTransportProteinsCanonicalLaneLean.TransportGateLemmas

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

def ConstrainedMembraneTransportClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_membrane_transport_endgame (A : AdmissibleClass) : ConstrainedMembraneTransportClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse
