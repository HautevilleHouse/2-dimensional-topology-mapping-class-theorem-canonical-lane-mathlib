import Mathlib.Topology.Basic

/-!
# Admissible Class for the 2-Dimensional Topology Mapping Class Theorem

This file defines the surface admitted object and the admissible-class bridge
used by the canonical lane for the mapping class theorem.
-/

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean

/-- The admitted object for the surface mapping class theorem. -/
structure SurfaceAdmittedObject where
  surface : Type
  topology : TopologicalSpace surface
  closedCompactSurface : Prop
  orientableSurface : Prop
  genus : Nat
  boundaryComponents : Nat
  standardModelHomeomorphic : Prop
  mappingClassGroupGeneratedByDehnTwists : Prop
  poincareDualityLaw : Prop
  classificationConclusion : standardModelHomeomorphic
  generationConclusion : mappingClassGroupGeneratedByDehnTwists
  dualityConclusion : poincareDualityLaw

/-- The bridge witness is the conjunction of classification, generation, and duality. -/
def SurfaceWitnessClosed (O : SurfaceAdmittedObject) : Prop :=
  O.standardModelHomeomorphic ∧ O.mappingClassGroupGeneratedByDehnTwists ∧ O.poincareDualityLaw

/-- The admissible class for the constrained mapping class theorem. -/
structure AdmissibleClass where
  object : SurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

/-- The full admitted closure: bridge witness plus one of the gate alternatives. -/
def admittedClosure (A : AdmissibleClass) : Prop :=
  SurfaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse