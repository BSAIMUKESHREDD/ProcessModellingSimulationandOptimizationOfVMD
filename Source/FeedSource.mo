within VacuumMembraneDistillation.Source;
model FeedSource


  parameter Real T_F(unit="K") = 80+273;
  parameter Real C_F(unit="g/l")= 0.5;
  parameter Real v(unit="m/s")= 0.13;
  parameter Real Q_F(unit="l/h")=55;

parameter Real cp_F(unit="kJ/(kg.K)")= 4.12; //heat capcity feed side
parameter Real rho_F(unit="kg/m3")=973.3;//density of feed side fluid
parameter Real mu_F(unit="Pa.s")= 0.000347; //viscosity of feed side fluid
parameter Real lambda_F(unit="W/(m.K)") = 0.67;//thermal conductivity of feed side fluid

 Real delta_Hv(unit="J/kg");//latent heat of vaporization of feed mixture

  Streams.FeedInlet feedInlet
    annotation (Placement(transformation(extent={{24,-6},{44,14}})));
equation
  feedInlet.T_F = T_F;
  feedInlet.C_F=C_F;
  feedInlet.v=v;
  feedInlet.Q_F = Q_F;

  feedInlet.cp_F=cp_F;
  feedInlet.rho_F=rho_F;

  feedInlet.lambda_F=lambda_F;
  feedInlet.mu_F = mu_F;

    feedInlet.delta_Hv = delta_Hv;


  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-42,42},{22,-2}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.Forward)}),                    Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end FeedSource;
