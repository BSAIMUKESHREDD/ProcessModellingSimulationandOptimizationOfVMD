within VacuumMembraneDistillation.Streams;
connector Retentate
  Real T_R(unit="K");
   Real C_R(unit="g/l");

   Real Q_R(unit="l/s");

     Real cp_R(unit="kJ/(kg.K)"); //heat capcity Retentae side

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Polygon(
          points={{-60,60},{-60,-62},{60,0},{-60,60}},
          lineColor={28,108,200},
          fillColor={0,140,72},
          fillPattern=FillPattern.CrossDiag)}),                  Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Retentate;
