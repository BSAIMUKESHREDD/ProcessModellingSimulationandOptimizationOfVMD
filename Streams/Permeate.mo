within VacuumMembraneDistillation.Streams;
connector Permeate
    Real T_P(unit="K");
   Real C_P(unit="g/l");
   Real P2(unit="kPa");
   Real Q_P(unit="l/s");

     Real cp_P(unit="kJ/(kg.K)"); //heat capcity permeate side
      Real rho_P(unit="kg/m3");//density of permeate side fluid


  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Polygon(
          points={{-54,64},{-54,-56},{86,4},{-54,64}},
          lineColor={28,108,200},
          fillColor={162,29,33},
          fillPattern=FillPattern.Solid)}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Permeate;
