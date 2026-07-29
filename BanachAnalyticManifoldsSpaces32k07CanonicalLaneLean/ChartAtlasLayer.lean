import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean

structure ChartAtlasCertificate where
  chartCount : Nat
  atlasContainsAllCharts : Bool
  overlapConditionChecked : Bool

default ChartAtlasCertificate := {
  chartCount := 0,
  atlasContainsAllCharts := false,
  overlapConditionChecked := false
}

def ChartAtlasLayerClosed (C : ChartAtlasCertificate) : Prop :=
  C.atlasContainsAllCharts = true ∧ C.overlapConditionChecked = true

end BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean
end HautevilleHouse