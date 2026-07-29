import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure LefschetzFixedPointPackage where
  compactManifold : Type u
  topology : TopologicalSpace compactManifold
  smoothStructure : Prop
  map : compactManifold → compactManifold
  mapContinuous : Continuous map
  lefschetzNumber : ℤ
  nonZeroLefschetzNumber : lefschetzNumber ≠ 0

structure LefschetzFixedPointEvidence (L : LefschetzFixedPointPackage) where
  smoothStructureClosed : L.smoothStructure
  mapContinuousClosed : L.mapContinuous
  nonZeroLefschetzNumberClosed : L.nonZeroLefschetzNumber

def LefschetzFixedPointClosed (L : LefschetzFixedPointPackage) : Prop :=
  L.smoothStructure ∧ L.mapContinuous ∧ L.nonZeroLefschetzNumber

theorem lefschetz_fixed_point_closed_from_evidence (L : LefschetzFixedPointPackage)
    (E : LefschetzFixedPointEvidence L) : LefschetzFixedPointClosed L := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.mapContinuousClosed E.nonZeroLefschetzNumberClosed)

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse