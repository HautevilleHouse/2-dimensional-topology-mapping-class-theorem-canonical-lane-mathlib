import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoDTopologyMappingClassTheoremCanonicalLaneLean

structure TeichmuellerSpacePackage where
  surface : Type
  complexStructure : Type
  teichmuellerMetric : Prop
  mappingClassGroupAction : Prop
  moduliSpaceQuotient : Prop
  finitenessOfMappingClassGroup : Prop

structure TeichmuellerSpaceEvidence (T : TeichmuellerSpacePackage) where
  teichmuellerMetricClosed : T.teichmuellerMetric
  mappingClassGroupActionClosed : T.mappingClassGroupAction
  moduliSpaceQuotientClosed : T.moduliSpaceQuotient
  finitenessOfMappingClassGroupClosed : T.finitenessOfMappingClassGroup

def TeichmuellerSpaceClosed (T : TeichmuellerSpacePackage) : Prop :=
  T.teichmuellerMetric ∧ T.mappingClassGroupAction ∧ T.moduliSpaceQuotient ∧ T.finitenessOfMappingClassGroup

theorem teichmueller_space_closed_from_evidence (T : TeichmuellerSpacePackage) (E : TeichmuellerSpaceEvidence T) :
    TeichmuellerSpaceClosed T := by
  exact And.intro E.teichmuellerMetricClosed (And.intro E.mappingClassGroupActionClosed (And.intro E.moduliSpaceQuotientClosed E.finitenessOfMappingClassGroupClosed))

end TwoDTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse