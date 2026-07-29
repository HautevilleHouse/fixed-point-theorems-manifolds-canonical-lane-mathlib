import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FixedPointTheoremsManifoldsCanonicalLaneLean

structure ContractibleSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  homotopyEquivalentToPoint : Prop
  stronglyContractible : Prop
  contractionFamilyExists : Prop

structure ContractibleSpaceEvidence (C : ContractibleSpacePackage) where
  homotopyEquivalentToPointClosed : C.homotopyEquivalentToPoint
  stronglyContractibleClosed : C.stronglyContractible
  contractionFamilyExistsClosed : C.contractionFamilyExists

def ContractibleSpaceClosed (C : ContractibleSpacePackage) : Prop :=
  C.homotopyEquivalentToPoint ∧ C.stronglyContractible ∧ C.contractionFamilyExists

theorem contractible_space_closed_from_evidence (C : ContractibleSpacePackage)
    (E : ContractibleSpaceEvidence C) : ContractibleSpaceClosed C := by
  exact And.intro E.homotopyEquivalentToPointClosed
    (And.intro E.stronglyContractibleClosed E.contractionFamilyExistsClosed)

end FixedPointTheoremsManifoldsCanonicalLaneLean
end HautevilleHouse