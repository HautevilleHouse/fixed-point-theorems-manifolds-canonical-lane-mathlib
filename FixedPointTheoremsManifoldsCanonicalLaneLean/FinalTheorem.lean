import FixedPointTheoremsManifoldsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

def ConstrainedFixedPointClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fixed_point_endgame (A : AdmissibleClass) :
    ConstrainedFixedPointClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse