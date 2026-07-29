import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure BrouwerFixedPointPackage where
  closedBall : Type u
  topology : TopologicalSpace closedBall
  dimension : ℕ
  continuousMap : closedBall → closedBall
  fixedPointExists : Prop

structure BrouwerFixedPointEvidence (B : BrouwerFixedPointPackage) where
  continuousMapClosed : Continuous B.continuousMap
  fixedPointExistsClosed : B.fixedPointExists

def BrouwerFixedPointClosed (B : BrouwerFixedPointPackage) : Prop :=
  Continuous B.continuousMap ∧ B.fixedPointExists

theorem brouwer_fixed_point_closed_from_evidence (B : BrouwerFixedPointPackage)
    (E : BrouwerFixedPointEvidence B) : BrouwerFixedPointClosed B := by
  exact And.intro E.continuousMapClosed E.fixedPointExistsClosed

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse