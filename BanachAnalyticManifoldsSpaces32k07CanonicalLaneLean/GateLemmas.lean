import BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean
end HautevilleHouse
