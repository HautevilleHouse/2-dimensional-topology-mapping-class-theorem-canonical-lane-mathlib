import TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SurfaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.classificationConclusion
    (And.intro A.object.generationConclusion A.object.dualityConclusion)

end TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse