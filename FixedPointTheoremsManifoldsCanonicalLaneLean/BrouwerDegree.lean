import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure BrouwerDegreePackage where
  euclideanDomain : Type u
  dimension : ℕ
  continuousMap : euclideanDomain → euclideanDomain
  degree : ℤ
  degreeWellDefined : Prop
  homotopyInvariance : Prop
  existenceResult : degree ≠ 0 → ∃ x, continuousMap x = x

structure BrouwerDegreeEvidence (B : BrouwerDegreePackage) where
  degreeWellDefinedClosed : B.degreeWellDefined
  homotopyInvarianceClosed : B.homotopyInvariance
  existenceResultClosed : B.existenceResult

def BrouwerDegreeClosed (B : BrouwerDegreePackage) : Prop :=
  B.degreeWellDefined ∧ B.homotopyInvariance ∧ (B.degree ≠ 0 → ∃ x, B.continuousMap x = x)

theorem brouwer_degree_closed_from_evidence (B : BrouwerDegreePackage)
    (E : BrouwerDegreeEvidence B) : BrouwerDegreeClosed B :=
  And.intro E.degreeWellDefinedClosed
    (And.intro E.homotopyInvarianceClosed E.existenceResultClosed)

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse