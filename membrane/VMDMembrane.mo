within VacuumMembraneDistillation.membrane;
model VMDMembrane

  Real J(unit="kmol/(m2.s)");
  Real N(unit="kg/(m2.s)");
  Real De(unit="");
  Real P0_mf(unit="kPa");
  Real T_M(unit="K");
  Real hf(unit="W/(m2.K)");
  Real mtc(unit="m/s");
  Real T_mf(unit="K");
 // Real C_mf(unit="g/l");

  Real N_Re;
  Real N_Sc;
  Real N_Pr;

//parameter Real lambda_W(unit="")=4160;//heat of vaporizatin for water
parameter Real L(unit="m")=0.5; //length of a membrane

parameter Real kg= 0.025;
parameter Real km=0.25;



  Streams.Permeate permeate annotation (Placement(transformation(extent={{-64,32},
            {-44,52}}), iconTransformation(extent={{-64,32},{-44,52}})));
  Streams.MEMBRANEPROPERTIES mEMBRANEPROPERTIES annotation (Placement(
        transformation(extent={{32,30},{52,50}}), iconTransformation(extent={{32,
            30},{52,50}})));
  Streams.FeedInlet feedInlet annotation (Placement(transformation(extent={{-64,
            -20},{-44,0}}), iconTransformation(extent={{-64,-20},{-44,0}})));
  Streams.Retentate retentate annotation (Placement(transformation(extent={{36,-22},
            {56,-2}}), iconTransformation(extent={{36,-22},{56,-2}})));
equation

  feedInlet.Q_F = permeate.Q_P + retentate.Q_R;
  feedInlet.Q_F*feedInlet.C_F = permeate.Q_P*permeate.C_P + retentate.Q_R*retentate.C_R;
  permeate.Q_P = N*mEMBRANEPROPERTIES.Am; //unit inconsitency
  permeate.C_P=0;
  J=N/permeate.rho_P; //unit inconsitency
  N = De*(P0_mf-permeate.P2);
  De =( mEMBRANEPROPERTIES.M/(mEMBRANEPROPERTIES.R*T_M))*(1.064*mEMBRANEPROPERTIES.r*mEMBRANEPROPERTIES.epsilon/(mEMBRANEPROPERTIES.delta*mEMBRANEPROPERTIES.tau));
  P0_mf = exp(23.238-3841/(T_mf-45));

  T_M = (T_mf+permeate.T_P)*0.5;

  //heat transfer correaltion

 hf*mEMBRANEPROPERTIES.d/feedInlet.lambda_F = 0.23*N_Re^0.8*N_Pr^0.33;
 N_Re = mEMBRANEPROPERTIES.d*feedInlet.v*feedInlet.rho_F/feedInlet.mu_F;
 N_Pr = feedInlet.cp_F*feedInlet.mu_F/feedInlet.lambda_F;

 //mass transfer correlation
 mtc*L/mEMBRANEPROPERTIES.d = 0.23*N_Re^0.8*N_Sc^0.33;
 N_Sc = feedInlet.mu_F/(feedInlet.rho_F*mEMBRANEPROPERTIES.D_ab);

 //concentration polarization
 retentate.C_R/feedInlet.C_F = exp(-J/mtc);

// heat balance

feedInlet.rho_F*feedInlet.Q_F*feedInlet.cp_F*feedInlet.T_F =  permeate.rho_P*permeate.Q_P*permeate.cp_P*permeate.T_P  + retentate.C_R*retentate.cp_R*retentate.Q_R*retentate.T_R + permeate.Q_P*permeate.rho_P*feedInlet.delta_Hv + mEMBRANEPROPERTIES.lambda_M*N*(retentate.T_R-permeate.T_P) /mEMBRANEPROPERTIES.delta;
//unit inconsitency

mEMBRANEPROPERTIES.lambda_M*(retentate.T_R-permeate.T_P) /mEMBRANEPROPERTIES.delta + N*feedInlet.delta_Hv = hf*(permeate.T_P- T_mf);


//latent heat of vaporizarion



//membrane isostrain model


feedInlet.delta_Hv = 1.75*T_mf +2024.3;

mEMBRANEPROPERTIES.lambda_M =  (mEMBRANEPROPERTIES.epsilon)*kg + (1-mEMBRANEPROPERTIES.epsilon)*km;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Polygon(
          points={{-40,40},{-60,20},{-40,0},{40,0},{58,18},{40,40},{0,60},{-40,40}},
          lineColor={28,108,200},
          fillColor={217,67,180},
          fillPattern=FillPattern.Forward)}),                    Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end VMDMembrane;
