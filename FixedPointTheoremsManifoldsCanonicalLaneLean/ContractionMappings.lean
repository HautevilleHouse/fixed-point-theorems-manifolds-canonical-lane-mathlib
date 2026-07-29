import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure ContractionMappingPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : MetricSpace manifold
  map : manifold → manifold
  lipschitzConstant : ℝ
  contractive : lipschitzConstant < 1
  completeness : CompleteSpace manifold

structure ContractionMappingEvidence (C : ContractionMappingPackage) where
  contractiveClosed : C.contractive
  completenessClosed : C.completeness

def ContractionMappingClosed (C : ContractionMappingPackage) : Prop :=
  C.contractive ∧ C.completeness

theorem contraction_mapping_closed_from_evidence (C : ContractionMappingPackage)
    (E : ContractionMappingEvidence C) : ContractionMappingClosed C :=
  And.intro E.contractiveClosed E.completenessClosed

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse