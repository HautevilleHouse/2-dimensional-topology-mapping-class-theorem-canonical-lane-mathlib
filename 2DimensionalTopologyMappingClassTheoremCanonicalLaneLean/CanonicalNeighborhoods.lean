namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean

structure SurfaceModelsPackage where
  classificationTheorem : Prop
  invarianceTheorem : Prop
  dualityTheorem : Prop

structure CanonicalNeighborhoodsPackage (S : SurfaceModelsPackage) where
  highComplexityRegionCovered : Prop
  pantsDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderMappingClassAction : Prop
  bridgeToSurfaceModels : S.classificationTheorem ∧ S.invarianceTheorem ∧ S.dualityTheorem

structure CanonicalNeighborhoodsEvidence {S : SurfaceModelsPackage}
    (C : CanonicalNeighborhoodsPackage S) where
  highComplexityRegionCoveredClosed : C.highComplexityRegionCovered
  pantsDecompositionClosed : C.pantsDecomposition
  scaleCompatibilityClosed : C.scaleCompatibility
  persistenceUnderMappingClassActionClosed : C.persistenceUnderMappingClassAction
  bridgeToSurfaceModelsClosed : C.bridgeToSurfaceModels

def CanonicalNeighborhoodsClosed {S : SurfaceModelsPackage}
    (C : CanonicalNeighborhoodsPackage S) : Prop :=
  C.highComplexityRegionCovered ∧ C.pantsDecomposition ∧
  C.scaleCompatibility ∧ C.persistenceUnderMappingClassAction ∧
  C.bridgeToSurfaceModels

theorem canonical_neighborhoods_closed_from_evidence
    {S : SurfaceModelsPackage} (C : CanonicalNeighborhoodsPackage S)
    (E : CanonicalNeighborhoodsEvidence C) :
    CanonicalNeighborhoodsClosed C := by
  exact And.intro E.highComplexityRegionCoveredClosed
    (And.intro E.pantsDecompositionClosed
      (And.intro E.scaleCompatibilityClosed
        (And.intro E.persistenceUnderMappingClassActionClosed
          E.bridgeToSurfaceModelsClosed)))

end TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse