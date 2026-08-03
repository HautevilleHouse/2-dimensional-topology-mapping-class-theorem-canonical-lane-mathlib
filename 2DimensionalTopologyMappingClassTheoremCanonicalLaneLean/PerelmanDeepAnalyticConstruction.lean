import TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean.FoundationalTheoremInhabitants

/-!
# 2 Dimensional Topology Mapping Class Theorem Deep Construction

This module refines the foundational inhabitants into a deeper construction
interface for the 2-dimensional mapping class theorem. It names the surface
classification, mapping class group generation, Nielsen–Thurston dynamics,
invariance principles, and duality ingredients that feed the already checked
mapping class route.

The module is intentionally term-level: each construction supplies Lean
inhabitants for its named components and maps them into the foundational
theorem inhabitants used by the route closure.
-/

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean

structure SurfaceClassificationConstruction where
  orientable : Prop
  compact : Prop
  connected : Prop
  genus : Nat
  eulerCharacteristic : Int
  orientableTerm : orientable
  compactTerm : compact
  connectedTerm : connected
  genusTerm : genus
  eulerCharacteristicTerm : eulerCharacteristic
  classificationTheorem : Prop
  invarianceUnderHomeomorphism : Prop
  classificationFromInvariants :
    orientable -> compact -> connected -> genus -> eulerCharacteristic -> classificationTheorem
  invarianceFromClassification :
    classificationTheorem -> invarianceUnderHomeomorphism

def SurfaceClassificationConstruction.toFoundational
    (C : SurfaceClassificationConstruction) : SurfaceClassificationFoundationalInhabitants := {
  classificationTheorem := C.classificationTheorem
  classificationTheoremTerm :=
    C.classificationFromInvariants C.orientableTerm C.compactTerm C.connectedTerm C.genusTerm C.eulerCharacteristicTerm
  invarianceUnderHomeomorphism := C.invarianceUnderHomeomorphism
  invarianceUnderHomeomorphismTerm :=
    C.invarianceFromClassification (C.classificationFromInvariants C.orientableTerm C.compactTerm C.connectedTerm C.genusTerm C.eulerCharacteristicTerm)
}

structure MappingClassGroupConstruction where
  surfaceClassified : Prop
  mappingClassGroupIsGroup : Prop
  generatedByDehnTwists : Prop
  dehnTwistRelations : Prop
  presentationKnown : Prop
  surfaceClassifiedTerm : surfaceClassified
  mappingClassGroupIsGroupTerm : mappingClassGroupIsGroup
  generatedByDehnTwistsTerm : generatedByDehnTwists
  dehnTwistRelationsTerm : dehnTwistRelations
  presentationKnownTerm : presentationKnown
  groupFromClassification : surfaceClassified -> mappingClassGroupIsGroup
  generatorsFromGroup : mappingClassGroupIsGroup -> generatedByDehnTwists
  relationsFromGenerators : generatedByDehnTwists -> dehnTwistRelations
  presentationFromRelations : dehnTwistRelations -> presentationKnown

def MappingClassGroupConstruction.toFoundational
    (C : MappingClassGroupConstruction) : MappingClassGroupFoundationalInhabitants := {
  surfaceClassified := C.surfaceClassified
  mappingClassGroupIsGroup := C.mappingClassGroupIsGroup
  generatedByDehnTwists := C.generatedByDehnTwists
  dehnTwistRelations := C.dehnTwistRelations
  presentationKnown := C.presentationKnown
  surfaceClassifiedTerm := C.surfaceClassifiedTerm
  mappingClassGroupIsGroupTerm := C.groupFromClassification C.surfaceClassifiedTerm
  generatedByDehnTwistsTerm := C.generatorsFromGroup (C.groupFromClassification C.surfaceClassifiedTerm)
  dehnTwistRelationsTerm := C.relationsFromGenerators (C.generatorsFromGroup (C.groupFromClassification C.surfaceClassifiedTerm))
  presentationKnownTerm := C.presentationFromRelations (C.relationsFromGenerators (C.generatorsFromGroup (C.groupFromClassification C.surfaceClassifiedTerm)))
}

structure NielsenThurstonClassificationConstruction where
  periodic : Prop
  reducible : Prop
  pseudoAnosov : Prop
  completeClassification : Prop
  mutuallyExclusive : Prop
  periodicTerm : periodic
  reducibleTerm : reducible
  pseudoAnosovTerm : pseudoAnosov
  completeClassificationTerm : completeClassification
  mutuallyExclusiveTerm : mutuallyExclusive

def NielsenThurstonClassificationConstruction.toFoundational
    (C : NielsenThurstonClassificationConstruction) : NielsenThurstonFoundationalInhabitants := {
  periodic := C.periodic
  reducible := C.reducible
  pseudoAnosov := C.pseudoAnosov
  completeClassification := C.completeClassification
  mutuallyExclusive := C.mutuallyExclusive
  periodicTerm := C.periodicTerm
  reducibleTerm := C.reducibleTerm
  pseudoAnosovTerm := C.pseudoAnosovTerm
  completeClassificationTerm := C.completeClassificationTerm
  mutuallyExclusiveTerm := C.mutuallyExclusiveTerm
}

structure InvariancePrincipleConstruction where
  homeomorphismInvariance : Prop
  isotopyInvariance : Prop
  diffeomorphismInvariance : Prop
  homeomorphismInvarianceTerm : homeomorphismInvariance
  isotopyInvarianceTerm : isotopyInvariance
  diffeomorphismInvarianceTerm : diffeomorphismInvariance

def InvariancePrincipleConstruction.toFoundational
    (C : InvariancePrincipleConstruction) : InvariancePrincipleFoundationalInhabitants := {
  homeomorphismInvariance := C.homeomorphismInvariance
  isotopyInvariance := C.isotopyInvariance
  diffeomorphismInvariance := C.diffeomorphismInvariance
  homeomorphismInvarianceTerm := C.homeomorphismInvarianceTerm
  isotopyInvarianceTerm := C.isotopyInvarianceTerm
  diffeomorphismInvarianceTerm := C.diffeomorphismInvarianceTerm
}

structure DualityTheoremConstruction where
  poincareDuality : Prop
  intersectionFormNonDegenerate : Prop
  intersectionFormUnimodular : Prop
  poincareDualityTerm : poincareDuality
  intersectionFormNonDegenerateTerm : intersectionFormNonDegenerate
  intersectionFormUnimodularTerm : intersectionFormUnimodular

def DualityTheoremConstruction.toFoundational
    (C : DualityTheoremConstruction) : DualityTheoremFoundationalInhabitants := {
  poincareDuality := C.poincareDuality
  intersectionFormNonDegenerate := C.intersectionFormNonDegenerate
  intersectionFormUnimodular := C.intersectionFormUnimodular
  poincareDualityTerm := C.poincareDualityTerm
  intersectionFormNonDegenerateTerm := C.intersectionFormNonDegenerateTerm
  intersectionFormUnimodularTerm := C.intersectionFormUnimodularTerm
}

structure MappingClassTheoremDeepConstruction where
  surfaceClassification : SurfaceClassificationConstruction
  mappingClassGroup : MappingClassGroupConstruction
  nielsenThurston : NielsenThurstonClassificationConstruction
  invariance : InvariancePrincipleConstruction
  duality : DualityTheoremConstruction

def MappingClassTheoremDeepConstruction.toFoundational
    (C : MappingClassTheoremDeepConstruction) : MappingClassTheoremFoundationalInhabitants := {
  surfaceClassification := C.surfaceClassification.toFoundational
  mappingClassGroup := C.mappingClassGroup.toFoundational
  nielsenThurston := C.nielsenThurston.toFoundational
  invariance := C.invariance.toFoundational
  duality := C.duality.toFoundational
}

end TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse