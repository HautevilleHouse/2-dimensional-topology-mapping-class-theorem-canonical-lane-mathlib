import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoDTopologyMappingClassTheoremCanonicalLaneLean

structure CurveComplexPackage where
  surface : Type
  curveGraph : Type
  GromovHyperbolicity : Prop
  mappingClassGroupAction : Prop
  rigidStructure : Prop

structure CurveComplexEvidence (C : CurveComplexPackage) where
  GromovHyperbolicityClosed : C.GromovHyperbolicity
  mappingClassGroupActionClosed : C.mappingClassGroupAction
  rigidStructureClosed : C.rigidStructure

def CurveComplexClosed (C : CurveComplexPackage) : Prop :=
  C.GromovHyperbolicity ∧ C.mappingClassGroupAction ∧ C.rigidStructure

theorem curve_complex_closed_from_evidence (C : CurveComplexPackage) (E : CurveComplexEvidence C) :
    CurveComplexClosed C := by
  exact And.intro E.GromovHyperbolicityClosed (And.intro E.mappingClassGroupActionClosed E.rigidStructureClosed)

end TwoDTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse