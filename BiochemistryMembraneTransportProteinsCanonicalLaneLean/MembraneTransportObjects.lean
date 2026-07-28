import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure Membrane where
  carrier : Type
  topology : TopologicalSpace carrier
  dimension : Nat

structure Protein where
  structure : Type
  conformation : Prop
  bindingSite : Prop

structure TransportEvent where
  membrane : Membrane
  protein : Protein
  substrate : Type
  direction : Prop

structure MembraneTransportAdmittedObject where
  membrane : Membrane
  protein : Protein
  event : TransportEvent
  conclusion : event.direction

def MembraneTransportWitnessClosed (O : MembraneTransportAdmittedObject) : Prop :=
  O.conclusion

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse
