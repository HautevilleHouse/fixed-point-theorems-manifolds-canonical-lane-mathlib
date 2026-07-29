import FixedPointTheoremsManifoldsCanonicalLaneLean.AdmissibleClass

/-!
# Fixed Point Structure Package
-/

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure FixedPointStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  map : manifold → manifold
  fixedPointSet : Set manifold
  contractibilityCondition : Prop
  indexSumCondition : Prop
  homotopyEquivalenceCondition : Prop

structure FixedPointStructureEvidence (F : FixedPointStructurePackage) where
  contractibilityConditionClosed : F.contractibilityCondition
  indexSumConditionClosed : F.indexSumCondition
  homotopyEquivalenceConditionClosed : F.homotopyEquivalenceCondition

def FixedPointStructureClosed (F : FixedPointStructurePackage) : Prop :=
  F.contractibilityCondition ∧ F.indexSumCondition ∧ F.homotopyEquivalenceCondition

theorem fixed_point_structure_closed_from_evidence (F : FixedPointStructurePackage)
    (E : FixedPointStructureEvidence F) : FixedPointStructureClosed F := by
  exact And.intro E.contractibilityConditionClosed
    (And.intro E.indexSumConditionClosed E.homotopyEquivalenceConditionClosed)

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse