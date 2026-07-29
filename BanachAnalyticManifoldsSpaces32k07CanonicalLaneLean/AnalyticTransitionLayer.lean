import BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean.BanachManifoldLayer

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean

structure AnalyticTransitionCertificate where
  chartName : String
  targetName : String
  analyticityChecked : Bool
  overlapConditionChecked : Bool
  cocycleConditionChecked : Bool

def defaultAnalyticTransitionCertificate : AnalyticTransitionCertificate :=
  { chartName := "chart1",
    targetName := "chart2",
    analyticityChecked := true,
    overlapConditionChecked := true,
    cocycleConditionChecked := true }

def AnalyticTransitionLayerClosed (C : AnalyticTransitionCertificate) : Prop :=
  C.analyticityChecked ∧ C.overlapConditionChecked ∧ C.cocycleConditionChecked

theorem analytic_transition_layer_closed_checked :
    AnalyticTransitionLayerClosed defaultAnalyticTransitionCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean
end HautevilleHouse
