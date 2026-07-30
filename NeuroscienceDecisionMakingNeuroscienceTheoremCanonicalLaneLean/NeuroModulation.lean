import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDecisionMakingNeuroscienceTheorem

structure NeuroModulationPackage where
  neuromodulatorType : Type u
  receptorDensity : Type v
  synapticPlasticity : Prop
  neuromodulatoryGating : Prop
  synapticPlasticityTerm : synapticPlasticity
  neuromodulatoryGatingTerm : neuromodulatoryGating

structure NeuroModulationEvidence (M : NeuroModulationPackage) where
  synapticPlasticityClosed : M.synapticPlasticity
  neuromodulatoryGatingClosed : M.neuromodulatoryGating

def NeuroModulationClosed (M : NeuroModulationPackage) : Prop :=
  M.synapticPlasticity ∧ M.neuromodulatoryGating

theorem neuro_modulation_closed_from_evidence (M : NeuroModulationPackage) (E : NeuroModulationEvidence M) :
    NeuroModulationClosed M := by
  exact And.intro E.synapticPlasticityClosed E.neuromodulatoryGatingClosed

end NeuroscienceDecisionMakingNeuroscienceTheorem
end HautevilleHouse