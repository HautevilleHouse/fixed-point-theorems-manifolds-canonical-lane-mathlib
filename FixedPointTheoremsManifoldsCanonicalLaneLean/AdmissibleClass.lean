import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : FixedPointAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FixedPointWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse