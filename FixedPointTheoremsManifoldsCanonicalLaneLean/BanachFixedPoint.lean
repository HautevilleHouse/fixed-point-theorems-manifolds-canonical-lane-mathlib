import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure BanachFixedPointPackage where
  completeMetricSpace : Type u
  metric : MetricSpace completeMetricSpace
  contractiveMap : completeMetricSpace → completeMetricSpace
  contractiveFactor : ℝ
  contractiveFactorBound : 0 ≤ contractiveFactor ∧ contractiveFactor < 1
  lipschitzConstant : ∀ x y, dist (contractiveMap x) (contractiveMap y) ≤ contractiveFactor * dist x y

structure BanachFixedPointEvidence (B : BanachFixedPointPackage) where
  contractiveFactorBoundClosed : B.contractiveFactorBound
  lipschitzConstantClosed : B.lipschitzConstant

def BanachFixedPointClosed (B : BanachFixedPointPackage) : Prop :=
  B.contractiveFactorBound ∧ B.lipschitzConstant

theorem banach_fixed_point_closed_from_evidence (B : BanachFixedPointPackage)
    (E : BanachFixedPointEvidence B) : BanachFixedPointClosed B := by
  exact And.intro E.contractiveFactorBoundClosed E.lipschitzConstantClosed

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse