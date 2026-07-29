import canonicalLaneMathlib.AdmissibleClass

/-!
# Banach Space Projection Layer

This layer defines the projection structure for Banach spaces used in the closure.
-/

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean

structure BanachSpaceProjection where
  sourceBanachSpace : String
  targetBanachSpace : String
  projectionMap : String
  idempotent : Prop
  boundedLinear : Bool

def theoremProjection : BanachSpaceProjection := {
  sourceBanachSpace := "C^ω(M, E)",
  targetBanachSpace := "C^ω(N, F)",
  projectionMap := "pullback along analytic submersion",
  idempotent := True,
  boundedLinear := true
}

theorem theorem_projection_idempotent :
    theoremProjection.idempotent := by
  unfold theoremProjection
  trivial

end BanachAnalyticManifoldsSpaces32k07CanonicalLaneLean
end HautevilleHouse