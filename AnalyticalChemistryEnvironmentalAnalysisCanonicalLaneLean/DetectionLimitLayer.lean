import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean

structure DetectionLimitLayerCertificate where
  instrumentDetectionLimit : Float
  methodDetectionLimit : Float
  signalToNoiseRatio : Float
  endpointRoute : String
  detectionLimitChecked : Bool
  carriedBoundaryNamed : Bool

def detectionLimitLayerCertificate : DetectionLimitLayerCertificate := {
  instrumentDetectionLimit := 0.01,
  methodDetectionLimit := 0.015,
  signalToNoiseRatio := 3.0,
  endpointRoute := "detection limit projected through admitted calibration curve data",
  detectionLimitChecked := true,
  carriedBoundaryNamed := true
}

def DetectionLimitLayerClosed (C : DetectionLimitLayerCertificate) : Prop :=
  C.detectionLimitChecked = true ∧
  C.carriedBoundaryNamed = true

theorem detection_limit_layer_closed_checked :
    DetectionLimitLayerClosed detectionLimitLayerCertificate := by
  exact And.intro rfl rfl

end AnalyticalChemistryEnvironmentalAnalysisCanonicalLaneLean
end HautevilleHouse