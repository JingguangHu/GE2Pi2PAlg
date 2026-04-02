#ifndef Physics_Analysis_GE2Pi2PAlg_H
#define Physics_Analysis_GE2Pi2PAlg_H

#include "GaudiKernel/AlgFactory.h"
#include "GaudiKernel/Algorithm.h"
#include "GaudiKernel/NTuple.h"
#include "GaudiKernel/ITHistSvc.h"
#include "GaudiKernel/IHistogramSvc.h"
#include "TH1I.h"
#include "TH1F.h"
#include "TH2F.h"

class GE2Pi2PAlg : public Algorithm{
  public:
    GE2Pi2PAlg(const std::string &name, ISvcLocator *pSvcLocator);
    StatusCode initialize();
    StatusCode execute();
    StatusCode finalize();

  private:
    double chisq_etamini;
    double chisq_lammini;
    double chisq_lambarmini;
    double chisq_mini;
    int m_kmtype;
    bool m_masscut;
    bool m_decaylcut;
    bool m_kinematic;
    int    m_DataSetMode;    // Which Series of Tags Used, 0:Both (default), 1:D^0, 2:D^+
    double mResonance;
    double pResonance;
    bool   m_TagD0;
    bool   m_TagDp;
    int m_test4C;
    int m_test5C;
    ITHistSvc *m_histSvc;
    
    
    TH1F *m_cutflow;

    bool debug;
    int nevt;
    int nrun;
  // Declare r0, z0 cut for charged tracks
    double vn_vr0cut;
    double vn_vz0cut;

    //Declare energy, dphi, dthe cuts for fake gamma's
    double vn_energyThreshold;
    double vn_gammaPhiCut;
    double vn_gammaThetaCut;
    bool   vn_useKalTrk;

    NTuple::Tuple* m_mcTuple;

    //index
    NTuple::Item<int> momindex;
    NTuple::Item<int> posindex;
    NTuple::Item<int> helixindex;
    NTuple::Item<int> helixcovindex;
    NTuple::Item<int> wparindex;

    //MC truth
    NTuple::Item<double>   m_e_psip_mom;
    NTuple::Item<double>   m_px_psip_mom;
    NTuple::Item<double>   m_py_psip_mom;
    NTuple::Item<double>   m_pz_psip_mom;
    NTuple::Item<double>   m_psip_cos;
    NTuple::Item<double>   m_psip_mom;

    NTuple::Item<double>   m_e_gam3_mom;
    NTuple::Item<double>   m_px_gam3_mom;
    NTuple::Item<double>   m_py_gam3_mom;
    NTuple::Item<double>   m_pz_gam3_mom;
    NTuple::Item<double>   m_gam3_cos;
    NTuple::Item<double>   m_gam3_mom;

    NTuple::Item<double>   m_e_chic1_mom;
    NTuple::Item<double>   m_px_chic1_mom;
    NTuple::Item<double>   m_py_chic1_mom;
    NTuple::Item<double>   m_pz_chic1_mom;
    NTuple::Item<double>   m_chic1_cos;
    NTuple::Item<double>   m_chic1_mom;

    NTuple::Item<double>   m_e_eta_mom;
    NTuple::Item<double>   m_px_eta_mom;
    NTuple::Item<double>   m_py_eta_mom;
    NTuple::Item<double>   m_pz_eta_mom;
    NTuple::Item<double>   m_eta_cos;
    NTuple::Item<double>   m_eta_mom;

    NTuple::Item<double>   m_e_lam_mom;
    NTuple::Item<double>   m_px_lam_mom;
    NTuple::Item<double>   m_py_lam_mom;
    NTuple::Item<double>   m_pz_lam_mom;
    NTuple::Item<double>   m_lam_cos;
    NTuple::Item<double>   m_lam_mom;

    NTuple::Item<double>   m_e_lambar_mom;
    NTuple::Item<double>   m_px_lambar_mom;
    NTuple::Item<double>   m_py_lambar_mom;
    NTuple::Item<double>   m_pz_lambar_mom;
    NTuple::Item<double>   m_lambar_cos;
    NTuple::Item<double>   m_lambar_mom;

    NTuple::Item<double>   m_e_pp_mom;
    NTuple::Item<double>   m_px_pp_mom;
    NTuple::Item<double>   m_py_pp_mom;
    NTuple::Item<double>   m_pz_pp_mom;
    NTuple::Item<double>   m_pp_cos;
    NTuple::Item<double>   m_pp_mom;

    NTuple::Item<double>   m_e_pm_mom;
    NTuple::Item<double>   m_px_pm_mom;
    NTuple::Item<double>   m_py_pm_mom;
    NTuple::Item<double>   m_pz_pm_mom;
    NTuple::Item<double>   m_pm_cos;
    NTuple::Item<double>   m_pm_mom;

    NTuple::Item<double>   m_e_pip_mom;
    NTuple::Item<double>   m_px_pip_mom;
    NTuple::Item<double>   m_py_pip_mom;
    NTuple::Item<double>   m_pz_pip_mom;
    NTuple::Item<double>   m_pip_cos;
    NTuple::Item<double>   m_pip_mom;

    NTuple::Item<double>   m_e_pim_mom;
    NTuple::Item<double>   m_px_pim_mom;
    NTuple::Item<double>   m_py_pim_mom;
    NTuple::Item<double>   m_pz_pim_mom;
    NTuple::Item<double>   m_pim_cos;
    NTuple::Item<double>   m_pim_mom;

    NTuple::Item<double>   m_e_gam1_mom;
    NTuple::Item<double>   m_px_gam1_mom;
    NTuple::Item<double>   m_py_gam1_mom;
    NTuple::Item<double>   m_pz_gam1_mom;
    NTuple::Item<double>   m_gam1_cos;
    NTuple::Item<double>   m_gam1_mom;

    NTuple::Item<double>   m_e_gam2_mom;
    NTuple::Item<double>   m_px_gam2_mom;
    NTuple::Item<double>   m_py_gam2_mom;
    NTuple::Item<double>   m_pz_gam2_mom;
    NTuple::Item<double>   m_gam2_cos;
    NTuple::Item<double>   m_gam2_mom;

    //
    NTuple::Tuple* m_anamcTuple;

    NTuple::Item<int>   m_idxmc;
    NTuple::Array<int>  m_trkidx;
    NTuple::Array<int>  m_pdgid;
    NTuple::Array<int>  m_motherpdgid;
    NTuple::Array<int>  m_motheridx;

    NTuple::Item<double> m_RVxy;
    NTuple::Item<double> m_RVz;
    NTuple::Item<double> m_RVphi;
    NTuple::Item<double> m_RVcostheta;
    NTuple::Item<double> m_Vxyz_pt;
    NTuple::Item<double> m_Vxyz_x;
    NTuple::Item<double> m_Vxyz_y;
    NTuple::Item<double> m_Vxyz_z;
    NTuple::Item<double> m_Vxyz_r;
    NTuple::Item<double> m_Vxyz_phi;
    NTuple::Item<double> m_Vxyz_xv ;
    NTuple::Item<double> m_Vxyz_yv ;
    NTuple::Item<double> m_Vxyz_Rxy;

    NTuple::Item<double> m_vtfitk_chisq_lambda;
    NTuple::Item<double> m_vtfitk_decayL_lambda;
    NTuple::Item<double> m_vtfitk_decayE_lambda;
    //
    NTuple::Item<double> m_vtfitk_chisq_lambdabar;
    NTuple::Item<double> m_vtfitk_decayL_lambdabar;
    NTuple::Item<double> m_vtfitk_decayE_lambdabar;

    NTuple::Item<double> m_vtfitk_chisq;

    NTuple::Item<double> m_kft1c_chisq_eta;
    NTuple::Item<double> m_kft1c_mass_eta;
    NTuple::Item<double> m_kft1c_p_eta;
    NTuple::Item<double> m_kft1c_px_eta;
    NTuple::Item<double> m_kft1c_py_eta;
    NTuple::Item<double> m_kft1c_pz_eta;
    NTuple::Item<double> m_kft1c_e_eta;
    
    NTuple::Item<double> m_kft1c_e_gam1;
    NTuple::Item<double> m_kft1c_mass_gam1;
    NTuple::Item<double> m_kft1c_p_gam1;
    NTuple::Item<double> m_kft1c_px_gam1;
    NTuple::Item<double> m_kft1c_py_gam1;
    NTuple::Item<double> m_kft1c_pz_gam1;

    NTuple::Item<double> m_kft1c_e_gam2;
    NTuple::Item<double> m_kft1c_mass_gam2;
    NTuple::Item<double> m_kft1c_p_gam2;
    NTuple::Item<double> m_kft1c_px_gam2;
    NTuple::Item<double> m_kft1c_py_gam2;
    NTuple::Item<double> m_kft1c_pz_gam2;
 
    NTuple::Item<int> m_kft1c_gam1_index;
    NTuple::Item<int> m_kft1c_gam2_index;
    NTuple::Item<int> m_kft4c_gam3_index;

    NTuple::Item<double> m_kft4c_e_psip;
    NTuple::Item<double> m_kft4c_pz_psip;
    NTuple::Item<double> m_kft4c_py_psip;
    NTuple::Item<double> m_kft4c_px_psip;
    NTuple::Item<double> m_kft4c_p_psip;
    NTuple::Item<double> m_kft4c_mass_psip;
    NTuple::Item<double> m_kft4c_chisq_psip;
   
    NTuple::Item<double> m_kft4c_mass_g1g2;
    NTuple::Item<double> m_kft4c_mass_g1g3;
    NTuple::Item<double> m_kft4c_mass_g2g3;

    NTuple::Item<double> m_kft4c_e_lambda;
    NTuple::Item<double> m_kft4c_pz_lambda;
    NTuple::Item<double> m_kft4c_py_lambda;
    NTuple::Item<double> m_kft4c_px_lambda;
    NTuple::Item<double> m_kft4c_p_lambda;
    NTuple::Item<double> m_kft4c_mass_lambda;

    NTuple::Item<double> m_kft4c_e_lambdabar;
    NTuple::Item<double> m_kft4c_pz_lambdabar;
    NTuple::Item<double> m_kft4c_py_lambdabar;
    NTuple::Item<double> m_kft4c_px_lambdabar;
    NTuple::Item<double> m_kft4c_p_lambdabar;
    NTuple::Item<double> m_kft4c_mass_lambdabar;

    NTuple::Item<double> m_kft4c_e_gam1;
    NTuple::Item<double> m_kft4c_pz_gam1;
    NTuple::Item<double> m_kft4c_py_gam1;
    NTuple::Item<double> m_kft4c_px_gam1;
    NTuple::Item<double> m_kft4c_p_gam1;
    NTuple::Item<double> m_kft4c_mass_gam1;
  
    NTuple::Item<double> m_kft4c_e_gam2;
    NTuple::Item<double> m_kft4c_pz_gam2;
    NTuple::Item<double> m_kft4c_py_gam2;
    NTuple::Item<double> m_kft4c_px_gam2;
    NTuple::Item<double> m_kft4c_p_gam2;
    NTuple::Item<double> m_kft4c_mass_gam2;

    NTuple::Item<double> m_kft4c_e_gam3;
    NTuple::Item<double> m_kft4c_pz_gam3;
    NTuple::Item<double> m_kft4c_py_gam3;
    NTuple::Item<double> m_kft4c_px_gam3;
    NTuple::Item<double> m_kft4c_p_gam3;
    NTuple::Item<double> m_kft4c_mass_gam3;
    
    NTuple::Item<double> m_kft4c_mass_LLg1g2;
    NTuple::Item<double> m_kft4c_mass_LLg1g3;
    NTuple::Item<double> m_kft4c_mass_LLg2g3;

    //raw Information

    NTuple::Item<double> m_raw_e_gam1;
    NTuple::Item<double> m_raw_pz_gam1;
    NTuple::Item<double> m_raw_py_gam1;
    NTuple::Item<double> m_raw_px_gam1;
    NTuple::Item<double> m_raw_p_gam1;
    NTuple::Item<double> m_raw_mass_gam1;

    NTuple::Item<double> m_raw_e_gam2;
    NTuple::Item<double> m_raw_pz_gam2;
    NTuple::Item<double> m_raw_py_gam2;
    NTuple::Item<double> m_raw_px_gam2;
    NTuple::Item<double> m_raw_p_gam2;
    NTuple::Item<double> m_raw_mass_gam2;

    NTuple::Item<double> m_raw_e_gam3;
    NTuple::Item<double> m_raw_pz_gam3;
    NTuple::Item<double> m_raw_py_gam3;
    NTuple::Item<double> m_raw_px_gam3;
    NTuple::Item<double> m_raw_p_gam3;
    NTuple::Item<double> m_raw_mass_gam3;

    NTuple::Item<double> m_raw_mass_g1g2;
    NTuple::Item<double> m_raw_mass_g1g3;
    NTuple::Item<double> m_raw_mass_g2g3;

    NTuple::Item<double> m_kft4c_mass_LLgam1;
    NTuple::Item<double> m_kft4c_mass_LLgam2;
    NTuple::Item<double> m_kft4c_mass_LLgam3;
    NTuple::Item<double> m_kft4c_mass_Lamgam1;
    NTuple::Item<double> m_kft4c_mass_Lamgam2;
    NTuple::Item<double> m_kft4c_mass_Lamgam3;
    NTuple::Item<double> m_kft4c_mass_Lambargam1;
    NTuple::Item<double> m_kft4c_mass_Lambargam2;
    NTuple::Item<double> m_kft4c_mass_Lambargam3;

    NTuple::Item<double> m_kft4c_chisq_4g_psip;
    NTuple::Item<double> m_kft4c_chisq_2g_psip;

 
};
#endif
