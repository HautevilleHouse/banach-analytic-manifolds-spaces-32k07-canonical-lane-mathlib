import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean.BanachAnalyticManifoldLayer
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean.BanachAnalyticMapLayer

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachAnalyticManifoldLayerClosed banachAnalyticManifoldCertificate ∧
  AnalyticMapLayerClosed analyticMapCertificate

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro banach_analytic_manifold_layer_closed_checked analytic_map_layer_closed_checked

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBanachAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_analytic_endgame (A : AdmissibleClass) :
    ConstrainedBanachAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean
end HautevilleHouse