import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure TransportProteinStructure where
  name : String
  sequence : String
  topology : Prop
  topologyTerm : topology

structure TransportProteinStructurePackage where
  structure : TransportProteinStructure
  expressionLevel : Prop
  localization : Prop
  structureClosed : Prop

structure TransportProteinStructureEvidence (P : TransportProteinStructurePackage) where
  structureClosedTerm : P.structureClosed
  expressionLevelTerm : P.expressionLevel
  localizationTerm : P.localization

def TransportProteinStructureClosed (P : TransportProteinStructurePackage) : Prop :=
  P.structureClosed ∧ P.expressionLevel ∧ P.localization

theorem transport_protein_structure_closed_from_evidence
    (P : TransportProteinStructurePackage) (E : TransportProteinStructureEvidence P) :
    TransportProteinStructureClosed P :=
  And.intro E.structureClosedTerm (And.intro E.expressionLevelTerm E.localizationTerm)

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse