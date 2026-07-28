import HautevilleHouse.BiochemistryMembraneTransportProteinsCanonicalLaneLean.MembraneTransportObjects

namespace HautevilleHouse
namespace BiochemistryMembraneTransportProteinsCanonicalLaneLean

structure PrimitiveMembrane where
  phospholipidBilayer : Prop
  selectivePermeability : Prop
  fluidMosaicModel : Prop

structure PrimitiveIonChannel where
  selective : Prop
  gated : Prop
  conductance : Float

structure PrimitiveCarrierProtein where
  bindingAffinity : Float
  conformationalChangeRate : Float
  transportRate : Float

structure PrimitiveTransportProcess (M : PrimitiveMembrane) (C : PrimitiveIonChannel) (P : PrimitiveCarrierProtein) where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  energyCoupling : Prop
  atpHydrolysis : Prop

structure PrimitiveMembraneTransportFoundationalInhabitants where
  membrane : PrimitiveMembrane
  channel : PrimitiveIonChannel
  carrier : PrimitiveCarrierProtein
  process : PrimitiveTransportProcess membrane channel carrier

end BiochemistryMembraneTransportProteinsCanonicalLaneLean
end HautevilleHouse
