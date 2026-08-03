import Mathlib.Topology.Basic
import Mathlib.GroupTheory.GroupAction.Basic

/-!
# Two-Dimensional Topology Mapping Class Theorem Evidence Terms

This module exposes the proof terms carried by each mapping-class certificate. The
route is term-level: every topological field has a named Lean term, and those terms
project into the 2D mapping class route closure.
-/

namespace HautevilleHouse
namespace TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean

structure SurfaceTopologyPackage where
  surface : Type
  isClosed : Prop
  isConnected : Prop
  isOrientable : Prop
  genus : ℕ

structure SurfaceClassificationClosed (S : SurfaceTopologyPackage) where
  orientabilityInvariant : Prop
  genusInvariant : Prop
  connectedSumDecomposition : Prop
  classificationTheorem : Prop

structure SurfaceClassificationCertificate (S : SurfaceTopologyPackage) where
  orientabilityInvariant : Prop
  orientabilityInvariantProof : orientabilityInvariant
  genusInvariant : Prop
  genusInvariantProof : genusInvariant
  connectedSumDecomposition : Prop
  connectedSumDecompositionProof : connectedSumDecomposition
  classificationTheorem : Prop
  classificationTheoremProof : classificationTheorem

def surface_classification_closed_from_evidence {S : SurfaceTopologyPackage}
    (C : SurfaceClassificationCertificate S) : SurfaceClassificationClosed S :=
  {
    orientabilityInvariant := C.orientabilityInvariant
    genusInvariant := C.genusInvariant
    connectedSumDecomposition := C.connectedSumDecomposition
    classificationTheorem := C.classificationTheorem
  }

structure SurfaceClassificationEvidenceTerms {S : SurfaceTopologyPackage}
    (C : SurfaceClassificationCertificate S) where
  orientabilityInvariant : C.orientabilityInvariant
  genusInvariant : C.genusInvariant
  connectedSumDecomposition : C.connectedSumDecomposition
  classificationTheorem : C.classificationTheorem
  surfaceClassificationClosed : SurfaceClassificationClosed S

def SurfaceClassificationCertificate.evidenceTerms {S : SurfaceTopologyPackage}
    (C : SurfaceClassificationCertificate S) : SurfaceClassificationEvidenceTerms C :=
  {
    orientabilityInvariant := C.orientabilityInvariantProof
    genusInvariant := C.genusInvariantProof
    connectedSumDecomposition := C.connectedSumDecompositionProof
    classificationTheorem := C.classificationTheoremProof
    surfaceClassificationClosed := surface_classification_closed_from_evidence C
  }

structure MappingClassGroupPackage (S : SurfaceTopologyPackage) where
  mappingClassGroup : Type

structure MappingClassGroupClosed {S : SurfaceTopologyPackage}
    (M : MappingClassGroupPackage S) where
  dehnTwistGeneration : Prop
  nielsenThurstonClassification : Prop
  dehnNielsenBaer : Prop

structure MappingClassGroupCertificate {S : SurfaceTopologyPackage}
    (M : MappingClassGroupPackage S) where
  dehnTwistGeneration : Prop
  dehnTwistGenerationProof : dehnTwistGeneration
  nielsenThurstonClassification : Prop
  nielsenThurstonClassificationProof : nielsenThurstonClassification
  dehnNielsenBaer : Prop
  dehnNielsenBaerProof : dehnNielsenBaer

def mapping_class_group_closed_from_evidence {S : SurfaceTopologyPackage}
    {M : MappingClassGroupPackage S} (C : MappingClassGroupCertificate M) : MappingClassGroupClosed M :=
  {
    dehnTwistGeneration := C.dehnTwistGeneration
    nielsenThurstonClassification := C.nielsenThurstonClassification
    dehnNielsenBaer := C.dehnNielsenBaer
  }

structure MappingClassGroupEvidenceTerms {S : SurfaceTopologyPackage}
    {M : MappingClassGroupPackage S} (C : MappingClassGroupCertificate M) where
  dehnTwistGeneration : C.dehnTwistGeneration
  nielsenThurstonClassification : C.nielsenThurstonClassification
  dehnNielsenBaer : C.dehnNielsenBaer
  mappingClassGroupClosed : MappingClassGroupClosed M

def MappingClassGroupCertificate.evidenceTerms {S : SurfaceTopologyPackage}
    {M : MappingClassGroupPackage S} (C : MappingClassGroupCertificate M) : MappingClassGroupEvidenceTerms C :=
  {
    dehnTwistGeneration := C.dehnTwistGenerationProof
    nielsenThurstonClassification := C.nielsenThurstonClassificationProof
    dehnNielsenBaer := C.dehnNielsenBaerProof
    mappingClassGroupClosed := mapping_class_group_closed_from_evidence C
  }

structure DualityClosed (S : SurfaceTopologyPackage) where
  poincareDuality : Prop
  intersectionForm : Prop

structure DualityCertificate (S : SurfaceTopologyPackage) where
  poincareDuality : Prop
  poincareDualityProof : poincareDuality
  intersectionForm : Prop
  intersectionFormProof : intersectionForm

def duality_closed_from_evidence {S : SurfaceTopologyPackage}
    (C : DualityCertificate S) : DualityClosed S :=
  {
    poincareDuality := C.poincareDuality
    intersectionForm := C.intersectionForm
  }

structure DualityEvidenceTerms {S : SurfaceTopologyPackage}
    (C : DualityCertificate S) where
  poincareDuality : C.poincareDuality
  intersectionForm : C.intersectionForm
  dualityClosed : DualityClosed S

def DualityCertificate.evidenceTerms {S : SurfaceTopologyPackage}
    (C : DualityCertificate S) : DualityEvidenceTerms C :=
  {
    poincareDuality := C.poincareDualityProof
    intersectionForm := C.intersectionFormProof
    dualityClosed := duality_closed_from_evidence C
  }

end TwoDimensionalTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse