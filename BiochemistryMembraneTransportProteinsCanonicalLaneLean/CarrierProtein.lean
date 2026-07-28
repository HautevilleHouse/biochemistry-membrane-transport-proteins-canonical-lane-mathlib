import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure CarrierProtein where
  substrate : String
  transportRate : ℝ
  saturability : Prop
  saturabilityTerm : saturability

structure CarrierProteinPackage where
  carrier : CarrierProtein
  kineticsModel : Prop
  energyCoupling : Prop
  carrierClosed : Prop

structure CarrierProteinEvidence (P : CarrierProteinPackage) where
  carrierClosedTerm : P.carrierClosed
  kineticsModelTerm : P.kineticsModel
  energyCouplingTerm : P.energyCoupling

def CarrierProteinClosed (P : CarrierProteinPackage) : Prop :=
  P.carrierClosed ∧ P.kineticsModel ∧ P.energyCoupling

theorem carrier_protein_closed_from_evidence
    (P : CarrierProteinPackage) (E : CarrierProteinEvidence P) :
    CarrierProteinClosed P :=
  And.intro E.carrierClosedTerm (And.intro E.kineticsModelTerm E.energyCouplingTerm)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse