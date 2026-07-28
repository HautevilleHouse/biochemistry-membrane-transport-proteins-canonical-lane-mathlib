import HautevilleHouse.BiochemistryMembraneTransportProteinsCanonicalLaneLean.TransportAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MembraneTransportWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse
