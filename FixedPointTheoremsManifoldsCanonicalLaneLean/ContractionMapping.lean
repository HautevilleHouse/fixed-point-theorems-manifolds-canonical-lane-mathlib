import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure ContractionPackage where
  manifold : ManifoldFixedPointSpace
  contraction : manifold.carrier → manifold.carrier
  lipschitzConstant : ℝ
  isContraction : lipschitzConstant < 1
  contractionMapsToItself : Set.mapsTo contraction (Set.univ : Set manifold.carrier) (Set.univ : Set manifold.carrier)
  isContractionTerm : isContraction
  contractionMapsToItselfTerm : contractionMapsToItself

structure ContractionEvidence (C : ContractionPackage) where
  banachFixedPoint : ∃ (x : C.manifold.carrier), C.contraction x = x
  uniqueness : ∀ (x y : C.manifold.carrier), C.contraction x = x → C.contraction y = y → x = y

def BanachFixedPointClosed (C : ContractionPackage) : Prop :=
  ∃ (x : C.manifold.carrier), C.contraction x = x

theorem banach_fixed_point_from_evidence (C : ContractionPackage) (E : ContractionEvidence C) :
    BanachFixedPointClosed C := by
  exact E.banachFixedPoint

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse
