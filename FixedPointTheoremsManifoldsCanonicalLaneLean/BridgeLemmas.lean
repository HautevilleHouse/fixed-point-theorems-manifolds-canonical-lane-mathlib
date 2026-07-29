import canonicalLaneMathlib.AdmissibleClass
import FixedPointTheoremsManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FixedPointWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse