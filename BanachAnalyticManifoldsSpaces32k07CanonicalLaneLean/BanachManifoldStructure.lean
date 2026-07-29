import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean

structure BanachManifoldCertificate where
  modelSpaceType : String
  chartCount : Nat
  analyticTransitionChecked : Bool
  chartAtlasSourceKey : String

default BanachManifoldCertificate := {
  modelSpaceType := "Banach space (type unspecified)",
  chartCount := 0,
  analyticTransitionChecked := false,
  chartAtlasSourceKey := ""
}

def BanachManifoldLayerClosed (C : BanachManifoldCertificate) : Prop :=
  C.analyticTransitionChecked = true

end BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean
end HautevilleHouse