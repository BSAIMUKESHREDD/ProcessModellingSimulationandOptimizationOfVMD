within VacuumMembraneDistillation.Source;
model RetentateSource

    Real T_R(unit="K");
   Real C_R(unit="g/l");

   Real Q_R(unit="l/s");

   parameter Real cp_R(unit="J/(kg.K)")= 4190; //heat capcity Retentae side





  Streams.Retentate retentate
    annotation (Placement(transformation(extent={{-4,-10},{16,10}})));
equation
  retentate.T_R=T_R;
    retentate.C_R =C_R;
  retentate.Q_R =Q_R;
  retentate.cp_R=cp_R;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-56,36},{26,-20}},
          lineColor={28,108,200},
          fillColor={0,140,72},
          fillPattern=FillPattern.Forward)}),                    Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end RetentateSource;
