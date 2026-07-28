import HautevilleHouse.AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean

structure ReactionKineticsDatum where
  rateConstant : Float
  activationEnergy : Float
  reactionOrder : Nat
  rateLawChecked : Bool
  derivedFromData : Bool

structure ThermodynamicsDatum where
  enthalpy : Float
  entropy : Float
  freeEnergy : Float
  spontaneityChecked : Bool
  secondLawCompatible : Bool

structure EquilibriumDatum where
  equilibriumConstant : Float
  concentrationProduct : Float
  reactionQuotient : Float
  equilibriumChecked : Bool
  massBalanceSatisfied : Bool

structure MolecularOrbitalDatum where
  orbitalLabel : String
  energy : Float
  occupation : Nat
  symmetryLabel : String
  huckelValid : Bool

structure ChemicalSystem where
  kinetics : ReactionKineticsDatum
  thermodynamics : ThermodynamicsDatum
  equilibrium : EquilibriumDatum
  orbitals : List MolecularOrbitalDatum
  environmentalMatrix : String

def primitiveReactionKineticsDatum : ReactionKineticsDatum := {
  rateConstant := 0.0,
  activationEnergy := 0.0,
  reactionOrder := 0,
  rateLawChecked := true,
  derivedFromData := true
}

def primitiveThermodynamicsDatum : ThermodynamicsDatum := {
  enthalpy := 0.0,
  entropy := 0.0,
  freeEnergy := 0.0,
  spontaneityChecked := true,
  secondLawCompatible := true
}

def primitiveEquilibriumDatum : EquilibriumDatum := {
  equilibriumConstant := 1.0,
  concentrationProduct := 1.0,
  reactionQuotient := 1.0,
  equilibriumChecked := true,
  massBalanceSatisfied := true
}

def primitiveMolecularOrbitalDatum : MolecularOrbitalDatum := {
  orbitalLabel := "HOMO",
  energy := -1.0,
  occupation := 2,
  symmetryLabel := "a1g",
  huckelValid := true
}

def primitiveChemicalSystem : ChemicalSystem := {
  kinetics := primitiveReactionKineticsDatum,
  thermodynamics := primitiveThermodynamicsDatum,
  equilibrium := primitiveEquilibriumDatum,
  orbitals := [primitiveMolecularOrbitalDatum],
  environmentalMatrix := "aqueous_solution"
}

end AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean
end HautevilleHouse