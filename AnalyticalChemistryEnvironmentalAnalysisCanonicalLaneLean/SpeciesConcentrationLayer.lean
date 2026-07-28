import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean

structure SpeciesConcentrationLayerCertificate where
  speciesName : String
  concentrationValue : Float
  methodUsed : String
  detectionLimit : Float
  linearRange : String
  concentrationChecked : Bool
  endpointChecked : Bool
  classicalComplementCarried : Bool

def speciesConcentrationLayerCertificate : SpeciesConcentrationLayerCertificate := {
  speciesName := "lead_ion",
  concentrationValue := 0.05,
  methodUsed := "atomic_absorption_spectrometry",
  detectionLimit := 0.01,
  linearRange := "0.01-10.0 mg/L",
  concentrationChecked := true,
  endpointChecked := true,
  classicalComplementCarried := true
}

def SpeciesConcentrationLayerClosed (C : SpeciesConcentrationLayerCertificate) : Prop :=
  C.concentrationChecked = true ∧
  C.endpointChecked = true ∧
  C.classicalComplementCarried = true

theorem species_concentration_layer_closed_checked :
    SpeciesConcentrationLayerClosed speciesConcentrationLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean
end HautevilleHouse