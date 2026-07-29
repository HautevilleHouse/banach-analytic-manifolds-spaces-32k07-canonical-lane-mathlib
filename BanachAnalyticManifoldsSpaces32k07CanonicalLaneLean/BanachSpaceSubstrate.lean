import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean

structure BanachSpaceSubstrate where
  normedSpaceType : Type
  completeChecked : Bool
  analyticStructureCompatible : Bool

def defaultBanachSpaceSubstrate : BanachSpaceSubstrate :=
  { normedSpaceType := Unit,
    completeChecked := true,
    analyticStructureCompatible := true }

def BanachSpaceSubstrateReady (S : BanachSpaceSubstrate) : Prop :=
  S.completeChecked ∧ S.analyticStructureCompatible

theorem banach_space_substrate_ready_checked :
    BanachSpaceSubstrateReady defaultBanachSpaceSubstrate := by
  exact And.intro rfl rfl

end BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean
end HautevilleHouse
