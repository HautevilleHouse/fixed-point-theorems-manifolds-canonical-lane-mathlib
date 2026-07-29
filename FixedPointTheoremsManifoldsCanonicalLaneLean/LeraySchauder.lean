import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure LeraySchauderPackage where
  domain : Type u
  normedSpace : NormedAddCommGroup domain
  compactOperator : domain → domain
  aPrioriBound : Prop
  degreeTheory : Prop
  fixedPointExists : Prop

structure LeraySchauderEvidence (L : LeraySchauderPackage) where
  aPrioriBoundClosed : L.aPrioriBound
  degreeTheoryClosed : L.degreeTheory
  fixedPointExistsClosed : L.fixedPointExists

def LeraySchauderClosed (L : LeraySchauderPackage) : Prop :=
  L.aPrioriBound ∧ L.degreeTheory ∧ L.fixedPointExists

theorem leray_schauder_closed_from_evidence (L : LeraySchauderPackage)
    (E : LeraySchauderEvidence L) : LeraySchauderClosed L :=
  And.intro E.aPrioriBoundClosed
    (And.intro E.degreeTheoryClosed E.fixedPointExistsClosed)

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse