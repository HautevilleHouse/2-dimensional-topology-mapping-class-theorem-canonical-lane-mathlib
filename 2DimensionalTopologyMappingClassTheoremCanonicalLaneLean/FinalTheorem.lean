import TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean

def ConstrainedMappingClassClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mapping_class_endgame (A : AdmissibleClass) :
    ConstrainedMappingClassClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse