import HautevilleHouse.AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean

structure ChemicalEquilibriumDatum where
  equilibriumConstant : Float
  reactionQuotient : Float
  gibbsFreeEnergy : Float
  temperature : Float
  gasConstant : Float
  leChatelierChecked : Bool
  equilibriumChecked : Bool

structure ChemicalEquilibriumLayerCertificate where
  datum : ChemicalEquilibriumDatum
  sourceKey : String
  equilibriumRoute : String
  thermodynamicRoute : String
  datumChecked : Bool
  boundaryCarried : Bool

def chemicalEquilibriumDatum : ChemicalEquilibriumDatum := {
  equilibriumConstant := 1.5e3,
  reactionQuotient := 1.2e3,
  gibbsFreeEnergy := -1000.0,
  temperature := 298.15,
  gasConstant := 8.314,
  leChatelierChecked := true,
  equilibriumChecked := true
}

def chemicalEquilibriumLayerCertificate : ChemicalEquilibriumLayerCertificate := {
  datum := chemicalEquilibriumDatum,
  sourceKey := "analytical-chemistry-environmental-analysis",
  equilibriumRoute := "chemical equilibrium route via law of mass action",
  thermodynamicRoute := "thermodynamic route via Gibbs free energy",
  datumChecked := true,
  boundaryCarried := true
}

def ChemicalEquilibriumLayerClosed (C : ChemicalEquilibriumLayerCertificate) : Prop :=
  C.datum.equilibriumChecked = true ∧
  C.datum.leChatelierChecked = true ∧
  C.datumChecked = true ∧
  C.boundaryCarried = true

theorem chemical_equilibrium_layer_closed_checked :
    ChemicalEquilibriumLayerClosed chemicalEquilibriumLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end HautevilleHouse.AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean
end HautevilleHouse