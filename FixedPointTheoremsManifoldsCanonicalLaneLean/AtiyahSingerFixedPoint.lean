import FixedPointTheoremsManifoldsCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure AtiyahSingerFixedPointPackage {G : RiemannianCurvaturePackage} where
  compactManifold : Type u
  ellipticOperator : Type v
  indexComputed : Prop
  fixedPointFormula : Prop
  equivariantIndex : Prop
  manifoldConstraints : Prop

structure AtiyahSingerFixedPointEvidence {G : RiemannianCurvaturePackage}
    (A : AtiyahSingerFixedPointPackage G) where
  indexComputedClosed : A.indexComputed
  fixedPointFormulaClosed : A.fixedPointFormula
  equivariantIndexClosed : A.equivariantIndex
  manifoldConstraintsClosed : A.manifoldConstraints

def AtiyahSingerFixedPointClosed {G : RiemannianCurvaturePackage}
    (A : AtiyahSingerFixedPointPackage G) : Prop :=
  A.indexComputed ∧ A.fixedPointFormula ∧ A.equivariantIndex ∧ A.manifoldConstraints

theorem atiyah_singer_fixed_point_closed_from_evidence
    {G : RiemannianCurvaturePackage} (A : AtiyahSingerFixedPointPackage G)
    (E : AtiyahSingerFixedPointEvidence A) : AtiyahSingerFixedPointClosed A := by
  exact And.intro E.indexComputedClosed
    (And.intro E.fixedPointFormulaClosed
      (And.intro E.equivariantIndexClosed E.manifoldConstraintsClosed))

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse

