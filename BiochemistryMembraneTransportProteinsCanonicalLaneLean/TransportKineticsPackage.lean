import HautevilleHouse.BiochemistryMembraneTransportProteinsCanonicalLaneLean.PrimitiveMembraneTransport

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure ReactionKineticsPackage where
  rateEquation : Type u
  equilibriumConstant : Type v
  rateLaw : Prop
  activationEnergy : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateLawClosed : K.rateLaw
  activationEnergyClosed : K.activationEnergy
  temperatureDependenceClosed : K.temperatureDependence

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateLaw ∧ K.activationEnergy ∧ K.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.rateLawClosed (And.intro E.activationEnergyClosed E.temperatureDependenceClosed)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse
