import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure BindingDomain where
  ligand : String
  affinity : ℝ
  specificity : Prop
  specificityTerm : specificity

structure BindingDomainPackage where
  domain : BindingDomain
  conformationalChange : Prop
  bindingSiteAvailability : Prop
  bindingClosed : Prop

structure BindingDomainEvidence (P : BindingDomainPackage) where
  bindingClosedTerm : P.bindingClosed
  conformationalChangeTerm : P.conformationalChange
  bindingSiteAvailabilityTerm : P.bindingSiteAvailability

def BindingDomainClosed (P : BindingDomainPackage) : Prop :=
  P.bindingClosed ∧ P.conformationalChange ∧ P.bindingSiteAvailability

theorem binding_domain_closed_from_evidence
    (P : BindingDomainPackage) (E : BindingDomainEvidence P) :
    BindingDomainClosed P :=
  And.intro E.bindingClosedTerm (And.intro E.conformationalChangeTerm E.bindingSiteAvailabilityTerm)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse