import FixedPointTheoremsManifoldsCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure LeraySchauderDegreePackage {G : RiemannianCurvaturePackage} where
  banachSpace : Type u
  compactOperator : banachSpace → banachSpace
  degreeDefined : Prop
  degreeProperty : Prop
  fixedPointIndex : Prop
  aPrioriBound : Prop

structure LeraySchauderDegreeEvidence {G : RiemannianCurvaturePackage}
    (L : LeraySchauderDegreePackage G) where
  degreeDefinedClosed : L.degreeDefined
  degreePropertyClosed : L.degreeProperty
  fixedPointIndexClosed : L.fixedPointIndex
  aPrioriBoundClosed : L.aPrioriBound

def LeraySchauderDegreeClosed {G : RiemannianCurvaturePackage}
    (L : LeraySchauderDegreePackage G) : Prop :=
  L.degreeDefined ∧ L.degreeProperty ∧ L.fixedPointIndex ∧ L.aPrioriBound

theorem leray_schauder_degree_closed_from_evidence
    {G : RiemannianCurvaturePackage} (L : LeraySchauderDegreePackage G)
    (E : LeraySchauderDegreeEvidence L) : LeraySchauderDegreeClosed L := by
  exact And.intro E.degreeDefinedClosed
    (And.intro E.degreePropertyClosed
      (And.intro E.fixedPointIndexClosed E.aPrioriBoundClosed))

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse

