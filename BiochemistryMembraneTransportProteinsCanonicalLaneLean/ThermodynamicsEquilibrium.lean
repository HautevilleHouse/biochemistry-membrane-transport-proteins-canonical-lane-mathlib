import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Float
  equilibriumConstant : Float
  evidence : Evidence

structure Evidence where
  gibbsNegative : gibbsFreeEnergy < 0
  equilibriumConstantPositive : equilibriumConstant > 0

def ThermodynamicsClosed (P : ThermodynamicsPackage) : Prop :=
  P.evidence.gibbsNegative ∧ P.evidence.equilibriumConstantPositive

theorem thermodynamics_closed_from_evidence (P : ThermodynamicsPackage) (E : P.evidence) : ThermodynamicsClosed P := by
  exact And.intro E.gibbsNegative E.equilibriumConstantPositive

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse