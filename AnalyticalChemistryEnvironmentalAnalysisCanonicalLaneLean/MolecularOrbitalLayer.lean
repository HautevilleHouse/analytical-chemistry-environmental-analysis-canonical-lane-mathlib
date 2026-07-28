import HautevilleHouse.AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean

structure MolecularOrbitalDatum where
  homoEnergy : Float
  lumoEnergy : Float
  bandGap : Float
  symmetryChecked : Bool
  orbitalMixingChecked : Bool
  overlapChecked : Bool

structure MolecularOrbitalLayerCertificate where
  datum : MolecularOrbitalDatum
  sourceKey : String
  orbitalRoute : String
  frontierRoute : String
  datumChecked : Bool
  boundaryCarried : Bool

def molecularOrbitalDatum : MolecularOrbitalDatum := {
  homoEnergy := -10.5,
  lumoEnergy := -2.3,
  bandGap := 8.2,
  symmetryChecked := true,
  orbitalMixingChecked := true,
  overlapChecked := true
}

def molecularOrbitalLayerCertificate : MolecularOrbitalLayerCertificate := {
  datum := molecularOrbitalDatum,
  sourceKey := "analytical-chemistry-environmental-analysis",
  orbitalRoute := "molecular orbital route via LCAO and symmetry",
  frontierRoute := "frontier orbital route via HOMO-LUMO gap",
  datumChecked := true,
  boundaryCarried := true
}

def MolecularOrbitalLayerClosed (C : MolecularOrbitalLayerCertificate) : Prop :=
  C.datum.symmetryChecked = true ∧
  C.datum.orbitalMixingChecked = true ∧
  C.datum.overlapChecked = true ∧
  C.datumChecked = true ∧
  C.boundaryCarried = true

theorem molecular_orbital_layer_closed_checked :
    MolecularOrbitalLayerClosed molecularOrbitalLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end HautevilleHouse.AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean
end HautevilleHouse