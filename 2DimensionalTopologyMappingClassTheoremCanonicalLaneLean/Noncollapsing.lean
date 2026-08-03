/-!
# Noncollapsing Package

This file defines the admissible-class bridge for the 2-dimensional topology
mapping class theorem. It introduces the `NoncollapsingPackage` structure,
its evidence, and the closedness predicate, in parallel with the corresponding
development in the Poincare conjecture project.
-/

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean

/-- A surface in 2-dimensional topology. -/
structure Surface2D where
  genus : Nat
  boundaryComponents : Nat
  orientable : Prop

/-- The mapping class group of a surface. -/
structure MappingClassGroup (S : Surface2D) where
  group : Type

/-- A package containing the key theorems about the mapping class theorem. -/
structure MappingClassTheoremPackage {S : Surface2D} (M : MappingClassGroup S) where
  classificationClosed : Prop
  invarianceUnderHomotopy : Prop
  dualityTheorem : Prop

/-- The noncollapsing package for 2-dimensional mapping class theorem. -/
structure NoncollapsingPackage {S : Surface2D} {M : MappingClassGroup S}
    (Pkg : MappingClassTheoremPackage M) where
  finitelyGenerated : Prop
  dehnTwistGenerating : Prop
  curveComplexHyperbolic : Prop

/-- Evidence for the noncollapsing package. -/
structure NoncollapsingEvidence {S : Surface2D} {M : MappingClassGroup S}
    {Pkg : MappingClassTheoremPackage M} (N : NoncollapsingPackage Pkg) where
  finitelyGeneratedClosed : N.finitelyGenerated
  dehnTwistGeneratingClosed : N.dehnTwistGenerating
  curveComplexHyperbolicClosed : N.curveComplexHyperbolic

/-- The closedness predicate for the noncollapsing package. -/
def NoncollapsingClosed {S : Surface2D} {M : MappingClassGroup S}
    {Pkg : MappingClassTheoremPackage M} (N : NoncollapsingPackage Pkg) : Prop :=
  N.finitelyGenerated ∧ N.dehnTwistGenerating ∧ N.curveComplexHyperbolic

/-- If evidence is present, the noncollapsing package is closed. -/
theorem noncollapsing_closed_from_evidence
    {S : Surface2D} {M : MappingClassGroup S} {Pkg : MappingClassTheoremPackage M}
    (N : NoncollapsingPackage Pkg) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.finitelyGeneratedClosed
    (And.intro E.dehnTwistGeneratingClosed E.curveComplexHyperbolicClosed)

end TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse