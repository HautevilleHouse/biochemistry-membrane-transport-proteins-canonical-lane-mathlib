import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure MembraneTransportProteinSystem where
  proteinName : String
  kinetics : TransportKineticsPackage
  orbital : MolecularOrbitalPackage
  thermodynamics : ThermodynamicsPackage
  conclusion : MembraneTransportProteinClosed this

def MembraneTransportProteinClosed (S : MembraneTransportProteinSystem) : Prop :=
  TransportKineticsClosed S.kinetics ∧ MolecularOrbitalClosed S.orbital ∧ ThermodynamicsClosed S.thermodynamics

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse