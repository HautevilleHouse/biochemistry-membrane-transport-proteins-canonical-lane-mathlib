import HautevilleHouse.BiochemistryMembraneTransportProteinsCanonicalLaneLean.MembraneTransportObjects

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure AdmissibleClass where
  object : MembraneTransportAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MembraneTransportWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse
