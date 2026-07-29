import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean

structure AnalyticTransitionCertificate where
  transitionMapFormulas : List String
  analyticConditionChecked : Bool
  sourceManifoldKey : String

default AnalyticTransitionCertificate := {
  transitionMapFormulas := [],
  analyticConditionChecked := false,
  sourceManifoldKey := ""
}

def AnalyticTransitionLayerClosed (C : AnalyticTransitionCertificate) : Prop :=
  C.analyticConditionChecked = true

end BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean
end HautevilleHouse