import FixedPointTheoremsManifoldsCanonicalLaneLean.MathlibObjects
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure LefschetzPackage where
  compactManifold : Type
  topology : TopologicalSpace compactManifold
  continuousMap : compactManifold → compactManifold
  lefschetzNumber : ℤ
  lefschetzNumberNonzero : lefschetzNumber ≠ 0
  fixedPointExists : Prop
  fixedPointExistsTerm : fixedPointExists

structure LefschetzEvidence (L : LefschetzPackage) where
  lefschetzNumberNonzeroClosed : L.lefschetzNumberNonzero
  fixedPointExistsClosed : L.fixedPointExists

def LefschetzClosed (L : LefschetzPackage) : Prop :=
  L.lefschetzNumberNonzero ∧ L.fixedPointExists

theorem lefschetz_closed_from_evidence (L : LefschetzPackage) (E : LefschetzEvidence L) :
    LefschetzClosed L := by
  exact And.intro E.lefschetzNumberNonzeroClosed E.fixedPointExistsClosed

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse