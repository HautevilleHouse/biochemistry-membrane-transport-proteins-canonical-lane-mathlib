import canonicalLaneMathlib.AdmissibleClass
import MembraneTransportObjects

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure ReactionKineticsPackage (M : MembraneTransportSystem) where
  michaelisMenten : Prop
  lineweaverBurk : Prop
  rateConstants : Prop
  inhibitionModel : Prop

default

structure ThermodynamicsPackage (M : MembraneTransportSystem) where
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  entropyChange : Prop
  enthalpyChange : Prop

default

structure ReactionKineticsEvidence {M : MembraneTransportSystem} (K : ReactionKineticsPackage M) where
  michaelisMentenClosed : K.michaelisMenten
  lineweaverBurkClosed : K.lineweaverBurk
  rateConstantsClosed : K.rateConstants
  inhibitionModelClosed : K.inhibitionModel

default

structure ThermodynamicsEvidence {M : MembraneTransportSystem} (T : ThermodynamicsPackage M) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  entropyChangeClosed : T.entropyChange
  enthalpyChangeClosed : T.enthalpyChange

default

def ReactionKineticsClosed {M : MembraneTransportSystem} (K : ReactionKineticsPackage M) : Prop :=
  K.michaelisMenten ∧ K.lineweaverBurk ∧ K.rateConstants ∧ K.inhibitionModel

def ThermodynamicsClosed {M : MembraneTransportSystem} (T : ThermodynamicsPackage M) : Prop :=
  T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.entropyChange ∧ T.enthalpyChange

theorem reaction_kinetics_closed_from_evidence
    {M : MembraneTransportSystem} (K : ReactionKineticsPackage M) (E : ReactionKineticsEvidence K) :
    ReactionKineticsClosed K := by
  exact And.intro E.michaelisMentenClosed (And.intro E.lineweaverBurkClosed (And.intro E.rateConstantsClosed E.inhibitionModelClosed))

theorem thermodynamics_closed_from_evidence
    {M : MembraneTransportSystem} (T : ThermodynamicsPackage M) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.equilibriumConstantClosed (And.intro E.entropyChangeClosed E.enthalpyChangeClosed))

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse