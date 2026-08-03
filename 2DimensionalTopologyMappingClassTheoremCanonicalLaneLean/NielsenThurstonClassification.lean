import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoDTopologyMappingClassTheoremCanonicalLaneLean

structure NielsenThurstonClassificationPackage where
  mappingClass : Type
  reductionSystem : Prop
  pseudoAnosovTheory : Prop
  periodicMapping : Prop
  reducibleMapping : Prop
  canonicalForm : Prop

structure NielsenThurstonClassificationEvidence (N : NielsenThurstonClassificationPackage) where
  reductionSystemClosed : N.reductionSystem
  pseudoAnosovTheoryClosed : N.pseudoAnosovTheory
  periodicMappingClosed : N.periodicMapping
  reducibleMappingClosed : N.reducibleMapping
  canonicalFormClosed : N.canonicalForm

def NielsenThurstonClassificationClosed (N : NielsenThurstonClassificationPackage) : Prop :=
  N.reductionSystem ∧ N.pseudoAnosovTheory ∧ N.periodicMapping ∧ N.reducibleMapping ∧ N.canonicalForm

theorem nielsen_thurston_classification_closed_from_evidence (N : NielsenThurstonClassificationPackage) (E : NielsenThurstonClassificationEvidence N) :
    NielsenThurstonClassificationClosed N := by
  exact And.intro E.reductionSystemClosed (And.intro E.pseudoAnosovTheoryClosed (And.intro E.periodicMappingClosed (And.intro E.reducibleMappingClosed E.canonicalFormClosed)))

end TwoDTopologyMappingClassTheoremCanonicalLaneLean
end HautevilleHouse