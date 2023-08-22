within VacuumMembraneDistillation.Streams;
connector FeedInlet

    Real T_F(unit="K");
    Real C_F(unit="g/l");
    Real v(unit="m/s");
    Real Q_F(unit="l/s");

  Real cp_F(unit="kJ/(kg.K)"); //heat capcity feed side
  Real rho_F(unit="kg/m3");//density of feed side fluid
  Real mu_F(unit="Pa.s"); //viscosity of feed side fluid
  Real lambda_F(unit="W/(m.K)");//thermal conductivity of feed side fluid

  Real delta_Hv(unit="J/kg");//latent heat of vaporization of feed mixture


  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Polygon(
          points={{-50,70},{-50,-50},{70,10},{-50,70}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end FeedInlet;
