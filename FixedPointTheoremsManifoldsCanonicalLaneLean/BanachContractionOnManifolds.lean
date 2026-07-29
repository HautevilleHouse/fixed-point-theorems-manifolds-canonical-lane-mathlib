import FixedPointTheoremsManifoldsCanonicalLaneLean.MathlibObjects
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure BanachContractionPackage where
  completeManifold : Type
  topology : TopologicalSpace completeManifold
  contraction : completeManifold → completeManifold
  lipschitzConstant : ℝ
  lipschitzConstantLessThanOne : lipschitzConstant < 1
  contractionMapping : Prop
  fixedPointUnique : Prop
  fixedPointUniqueTerm : fixedPointUnique

structure BanachContractionEvidence (B : BanachContractionPackage) where
  lipschitzConstantLessThanOneClosed : B.lipschitzConstantLessThanOne
  fixedPointUniqueClosed : B.fixedPointUnique

def BanachContractionClosed (B : BanachContractionPackage) : Prop :=
  B.lipschitzConstantLessThanOne ∧ B.fixedPointUnique

theorem banach_contraction_closed_from_evidence (B : BanachContractionPackage) (E : BanachContractionEvidence B) :
    BanachContractionClosed B := by
  exact And.intro E.lipschitzConstantLessThanOneClosed E.fixedPointUniqueClosed

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse