import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure AdmissibleClass where
  object : MembraneTransportProteinSystem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse