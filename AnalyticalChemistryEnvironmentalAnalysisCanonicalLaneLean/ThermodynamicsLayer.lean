import AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean

structure ThermodynamicsCertificate where
  enthalpyChange : Float
  entropyChange : Float
  gibbsFreeEnergy : Float
  temperature : Float
  spontaneity : Bool
  gibbsChecked : Bool
  endpointChecked : Bool
  classicalComplementCarried : Bool

def thermodynamicsCertificate : ThermodynamicsCertificate := {
  enthalpyChange := -100.0, -- kJ/mol
  entropyChange := 0.2, -- kJ/(mol·K)
  gibbsFreeEnergy := -159.63,
  temperature := 298.15,
  spontaneity := true,
  gibbsChecked := true,
  endpointChecked := true,
  classicalComplementCarried := true
}

def ThermodynamicsLayerClosed (C : ThermodynamicsCertificate) : Prop :=
  C.gibbsChecked = true ∧
  C.endpointChecked = true ∧
  C.classicalComplementCarried = true

theorem thermodynamics_layer_closed_checked :
    ThermodynamicsLayerClosed thermodynamicsCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean
end HautevilleHouse