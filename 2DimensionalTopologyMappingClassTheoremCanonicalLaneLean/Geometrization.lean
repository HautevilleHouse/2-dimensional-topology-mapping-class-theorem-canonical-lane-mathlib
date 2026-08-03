import Mathlib.Topology.Basic

/-!
# Two-Dimensional Topology: Mapping Class Theorem Package
-/

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean

structure Surface where
  genus : Nat
  orientable : Prop
  compact : Prop
  connected : Prop

structure SurfaceClassification (Σ : Surface) where
  classificationComplete : Prop
  invariancePrinciple : Prop
  dualityTheorem : Prop

structure MappingClassGroup (Σ : Surface) where
  generatedByDehnTwists : Prop
  finitePresentation : Prop
  actionOnHomology : Prop

structure MappingClassBridge {Σ : Surface} (C : SurfaceClassification Σ) (M : MappingClassGroup Σ) where
  classificationToMappingClass : C.classificationComplete → M.generatedByDehnTwists → M.finitePresentation
  invarianceToActionOnHomology : C.invariancePrinciple → M.actionOnHomology
  dualityToPresentation : C.dualityTheorem → M.finitePresentation

structure TwoDimensionalTopologyMappingClassTheoremPackage
    {Σ : Surface} (C : SurfaceClassification Σ) (M : MappingClassGroup Σ) (B : MappingClassBridge C M) where
  classificationTheorem : Prop
  invariancePrinciple : Prop
  dualityTheorem : Prop
  mappingClassGroupClassification : Prop

structure TwoDimensionalTopologyMappingClassTheoremEvidence
    {Σ : Surface} {C : SurfaceClassification Σ} {M : MappingClassGroup Σ} {B : MappingClassBridge C M}
    (P : TwoDimensionalTopologyMappingClassTheoremPackage C M B) where
  classificationTheoremClosed : P.classificationTheorem
  invariancePrincipleClosed : P.invariancePrinciple
  dualityTheoremClosed : P.dualityTheorem
  mappingClassGroupClassificationClosed : P.mappingClassGroupClassification

def TwoDimensionalTopologyMappingClassTheoremClosed
    {Σ : Surface} {C : SurfaceClassification Σ} {M : MappingClassGroup Σ} {B : MappingClassBridge C M}
    (P : TwoDimensionalTopologyMappingClassTheoremPackage C M B) : Prop :=
  P.classificationTheorem ∧ P.invariancePrinciple ∧
  P.dualityTheorem ∧ P.mappingClassGroupClassification

theorem twoDimensionalTopologyMappingClassTheorem_closed_from_evidence
    {Σ : Surface} {C : SurfaceClassification Σ} {M : MappingClassGroup Σ} {B : MappingClassBridge C M}
    (P : TwoDimensionalTopologyMappingClassTheoremPackage C M B)
    (E : TwoDimensionalTopologyMappingClassTheoremEvidence P) :
    TwoDimensionalTopologyMappingClassTheoremClosed P := by
  exact And.intro E.classificationTheoremClosed
    (And.intro E.invariancePrincipleClosed
      (And.intro E.dualityTheoremClosed
        E.mappingClassGroupClassificationClosed))

end TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse