import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure MolecularOrbitalPackage where
  homoEnergy : Float
  lumoEnergy : Float
  gap : Float
  evidence : Evidence

structure Evidence where
  homoCalculated : homoEnergy < 0
  lumoCalculated : lumoEnergy > 0
  gapPositive : gap > 0

def MolecularOrbitalClosed (P : MolecularOrbitalPackage) : Prop :=
  P.evidence.homoCalculated ∧ P.evidence.lumoCalculated ∧ P.evidence.gapPositive

theorem molecular_orbital_closed_from_evidence (P : MolecularOrbitalPackage) (E : P.evidence) : MolecularOrbitalClosed P := by
  exact And.intro E.homoCalculated (And.intro E.lumoCalculated E.gapPositive)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse