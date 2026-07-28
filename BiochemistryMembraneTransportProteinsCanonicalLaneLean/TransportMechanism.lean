import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure TransportMechanism where
  mechanismType : String -- "passive", "active", "facilitated"
  direction : String
  drivingForce : Prop
  drivingForceTerm : drivingForce

structure TransportMechanismPackage where
  mechanism : TransportMechanism
  coupledProcess : Prop
  regulation : Prop
  mechanismClosed : Prop

structure TransportMechanismEvidence (P : TransportMechanismPackage) where
  mechanismClosedTerm : P.mechanismClosed
  coupledProcessTerm : P.coupledProcess
  regulationTerm : P.regulation

def TransportMechanismClosed (P : TransportMechanismPackage) : Prop :=
  P.mechanismClosed ∧ P.coupledProcess ∧ P.regulation

theorem transport_mechanism_closed_from_evidence
    (P : TransportMechanismPackage) (E : TransportMechanismEvidence P) :
    TransportMechanismClosed P :=
  And.intro E.mechanismClosedTerm (And.intro E.coupledProcessTerm E.regulationTerm)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse