import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesTheoremCanonicalLaneLean

def bridgeClosed (A : CodesAdmissibleClass) : Prop :=
  CodeWitnessClosed A.object

theorem bridge_from_admissible_class (A : CodesAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialCodesTheoremCanonicalLaneLean
end HautevilleHouse