/-!
# Two-Dimensional Topology Mapping Class Theorem Canonical Lane Lean

This module provides the term-level interface for the foundational theorem
inhabitants in two-dimensional topology and mapping class groups. A complete
formalization supplies these records; the records then construct the admissible
bridge statements for the classification theorems, invariance principles, and
duality theorems underlying the mapping class theorem.
-/

namespace CanonicalLaneLean
namespace TwoDimensionalTopology

/-! ### Surface Classification Inhabitants -/

structure SurfaceClassificationFoundationalInhabitants where
  compactSurfaceClassification : Prop
  connectedSumDecomposition : Prop
  orientabilityInvariant : Prop
  genusInvariant : Prop
  boundaryComponentInvariant : Prop
  eulerCharacteristicInvariant : Prop
  compactSurfaceClassificationTerm : compactSurfaceClassification
  connectedSumDecompositionTerm : connectedSumDecomposition
  orientabilityInvariantTerm : orientabilityInvariant
  genusInvariantTerm : genusInvariant
  boundaryComponentInvariantTerm : boundaryComponentInvariant
  eulerCharacteristicInvariantTerm : eulerCharacteristicInvariant

/-! ### Mapping Class Group Inhabitants -/

structure MappingClassGroupFoundationalInhabitants where
  mappingClassGroupDefined : Prop
  groupStructure : Prop
  compositionLaw : Prop
  identityLaw : Prop
  inverseLaw : Prop
  actionOnHomotopyClasses : Prop
  dehnTwistSubgroupGenerated : Prop
  nielsenThurstonClassification : Prop
  mappingClassGroupDefinedTerm : mappingClassGroupDefined
  groupStructureTerm : groupStructure
  compositionLawTerm : compositionLaw
  identityLawTerm : identityLaw
  inverseLawTerm : inverseLaw
  actionOnHomotopyClassesTerm : actionOnHomotopyClasses
  dehnTwistSubgroupGeneratedTerm : dehnTwistSubgroupGenerated
  nielsenThurstonClassificationTerm : nielsenThurstonClassification

/-! ### Invariance Principle Inhabitants -/

structure InvariancePrincipleFoundationalInhabitants where
  homeomorphismInvarianceOfEulerCharacteristic : Prop
  homeomorphismInvarianceOfOrientability : Prop
  homeomorphismInvarianceOfGenus : Prop
  isotopyInvarianceOfMappingClass : Prop
  homotopyInvarianceOfSimpleClosedCurves : Prop
  homeomorphismInvarianceOfEulerCharacteristicTerm : homeomorphismInvarianceOfEulerCharacteristic
  homeomorphismInvarianceOfOrientabilityTerm : homeomorphismInvarianceOfOrientability
  homeomorphismInvarianceOfGenusTerm : homeomorphismInvarianceOfGenus
  isotopyInvarianceOfMappingClassTerm : isotopyInvarianceOfMappingClass
  homotopyInvarianceOfSimpleClosedCurvesTerm : homotopyInvarianceOfSimpleClosedCurves

/-! ### Duality Theorem Inhabitants -/

structure DualityTheoremFoundationalInhabitants where
  poincareDualityForSurfaces : Prop
  intersectionPairingDefined : Prop
  orientationClass : Prop
  cupProductDuality : Prop
  capProductDuality : Prop
  poincareDualityForSurfacesTerm : poincareDualityForSurfaces
  intersectionPairingDefinedTerm : intersectionPairingDefined
  orientationClassTerm : orientationClass
  cupProductDualityTerm : cupProductDuality
  capProductDualityTerm : capProductDuality

/-! ### Dehn Twist Inhabitants -/

structure DehnTwistFoundationalInhabitants where
  dehnTwistAlongSimpleClosedCurve : Prop
  rightDehnTwistDefined : Prop
  leftDehnTwistDefined : Prop
  braidRelation : Prop
  chainRelation : Prop
  lanternRelation : Prop
  dehnTwistAlongSimpleClosedCurveTerm : dehnTwistAlongSimpleClosedCurve
  rightDehnTwistDefinedTerm : rightDehnTwistDefined
  leftDehnTwistDefinedTerm : leftDehnTwistDefined
  braidRelationTerm : braidRelation
  chainRelationTerm : chainRelation
  lanternRelationTerm : lanternRelation

/-! ### Mapping Class Theorem Canonical Inhabitants -/

structure TwoDimensionalTopologyMappingClassTheoremCanonicalInhabitants where
  surfaceClassification : SurfaceClassificationFoundationalInhabitants
  mappingClassGroup : MappingClassGroupFoundationalInhabitants
  invariancePrinciple : InvariancePrincipleFoundationalInhabitants
  dualityTheorem : DualityTheoremFoundationalInhabitants
  dehnTwist : DehnTwistFoundationalInhabitants

end TwoDimensionalTopology
end CanonicalLaneLean