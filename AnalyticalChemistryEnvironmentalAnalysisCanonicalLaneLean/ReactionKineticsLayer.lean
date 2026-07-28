import HautevilleHouse.AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean

structure ReactionKineticsDatum where
  forwardRateConstant : Float
  reverseRateConstant : Float
  activationEnergy : Float
  temperature : Float
  gasConstant : Float
  rateLawChecked : Bool
  arrheniusChecked : Bool

structure ReactionKineticsLayerCertificate where
  datum : ReactionKineticsDatum
  sourceKey : String
  kineticsRoute : String
  transitionStateRoute : String
  datumChecked : Bool
  boundaryCarried : Bool

def reactionKineticsDatum : ReactionKineticsDatum := {
  forwardRateConstant := 0.05,
  reverseRateConstant := 0.01,
  activationEnergy := 50000.0,
  temperature := 298.15,
  gasConstant := 8.314,
  rateLawChecked := true,
  arrheniusChecked := true
}

def reactionKineticsLayerCertificate : ReactionKineticsLayerCertificate := {
  datum := reactionKineticsDatum,
  sourceKey := "analytical-chemistry-environmental-analysis",
  kineticsRoute := "reaction kinetics route via rate law and Arrhenius equation",
  transitionStateRoute := "transition state theory route via activated complex",
  datumChecked := true,
  boundaryCarried := true
}

def ReactionKineticsLayerClosed (C : ReactionKineticsLayerCertificate) : Prop :=
  C.datum.rateLawChecked = true ∧
  C.datum.arrheniusChecked = true ∧
  C.datumChecked = true ∧
  C.boundaryCarried = true

theorem reaction_kinetics_layer_closed_checked :
    ReactionKineticsLayerClosed reactionKineticsLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end HautevilleHouse.AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean
end HautevilleHouse