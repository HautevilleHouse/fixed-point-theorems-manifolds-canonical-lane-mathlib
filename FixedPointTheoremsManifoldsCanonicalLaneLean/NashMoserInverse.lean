import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure NashMoserPackage where
  baseSpace : Type u
  targetSpace : Type v
  smoothingOperators : Prop
  tameEstimates : Prop
  existenceTheorem : Prop

structure NashMoserEvidence (N : NashMoserPackage) where
  smoothingOperatorsClosed : N.smoothingOperators
  tameEstimatesClosed : N.tameEstimates
  existenceTheoremClosed : N.existenceTheorem

def NashMoserClosed (N : NashMoserPackage) : Prop :=
  N.smoothingOperators ∧ N.tameEstimates ∧ N.existenceTheorem

theorem nash_moser_closed_from_evidence (N : NashMoserPackage)
    (E : NashMoserEvidence N) : NashMoserClosed N :=
  And.intro E.smoothingOperatorsClosed
    (And.intro E.tameEstimatesClosed E.existenceTheoremClosed)

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse