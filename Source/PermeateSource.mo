within VacuumMembraneDistillation.Source;
model PermeateSource

      Real T_P(unit="K");
   Real C_P(unit="g/l");
   parameter Real P2(unit="kPa")=47;
   Real Q_P(unit="l/s");

   parameter Real cp_P(unit="kJ/(kg.K)")= 1.884; //heat capcity permeate side
   parameter Real rho_P(unit="kg/m3")=1;//density of permeate side fluid

  Streams.Permeate permeate
    annotation (Placement(transformation(extent={{40,-30},{60,-10}})));
equation

  permeate.T_P =T_P;
  permeate.C_P=C_P;
  permeate.P2 =P2;

  permeate.Q_P =Q_P;

  permeate.cp_P =cp_P;
  permeate.rho_P = rho_P;

   annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-36,38},{32,-8}},
          lineColor={28,108,200},
          fillColor={162,29,33},
          fillPattern=FillPattern.Forward)}),                     Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PermeateSource;
