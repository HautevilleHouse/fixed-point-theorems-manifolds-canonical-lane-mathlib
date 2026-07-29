import FixedPointTheoremsManifoldsCanonicalLaneLean.MathlibObjects
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure NielsenPackage where
  compactManifold : Type
  topology : TopologicalSpace compactManifold
  continuousMap : compactManifold → compactManifold
  nielsenNumber : ℕ
  nielsenNumberPositive : nielsenNumber > 0
  minimalFixedPointCount : Prop
  minimalFixedPointCountTerm : minimalFixedPointCount

structure NielsenEvidence (N : NielsenPackage) where
  nielsenNumberPositiveClosed : N.nielsenNumberPositive
  minimalFixedPointCountClosed : N.minimalFixedPointCount

def NielsenClosed (N : NielsenPackage) : Prop :=
  N.nielsenNumberPositive ∧ N.minimalFixedPointCount

theorem nielsen_closed_from_evidence (N : NielsenPackage) (E : NielsenEvidence N) :
    NielsenClosed N := by
  exact And.intro E.nielsenNumberPositiveClosed E.minimalFixedPointCountClosed

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse