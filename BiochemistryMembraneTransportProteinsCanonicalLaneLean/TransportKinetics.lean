import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure TransportKineticsPackage where
  rateConstant : Float
  michaelisConstant : Float
  transportType : String
  evidence : Evidence

structure Evidence where
  rateConstantMeasured : rateConstant > 0
  michaelisConstantFinite : michaelisConstant < ∞

def TransportKineticsClosed (P : TransportKineticsPackage) : Prop :=
  P.evidence.rateConstantMeasured ∧ P.evidence.michaelisConstantFinite

theorem transport_kinetics_closed_from_evidence (P : TransportKineticsPackage) (E : P.evidence) : TransportKineticsClosed P := by
  exact And.intro E.rateConstantMeasured E.michaelisConstantFinite

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse