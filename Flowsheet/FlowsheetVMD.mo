within VacuumMembraneDistillation.Flowsheet;
model FlowsheetVMD
  membrane.VMDMembrane vMDMembrane
    annotation (Placement(transformation(extent={{-66,-90},{66,50}})));
  Source.FeedSource feedSource
    annotation (Placement(transformation(extent={{-86,-84},{-66,-64}})));
  Source.PermeateSource permeateSource
    annotation (Placement(transformation(extent={{-92,58},{-72,78}})));
  Source.MembraneSOurce membraneSOurce
    annotation (Placement(transformation(extent={{60,56},{80,76}})));
  Source.RetentateSource retentateSource
    annotation (Placement(transformation(extent={{70,-80},{90,-60}})));
equation
  connect(vMDMembrane.feedInlet, feedSource.feedInlet) annotation (Line(points={
          {-35.64,-27},{-36,-27},{-36,-73.6},{-72.6,-73.6}}, color={28,108,200}));
  connect(vMDMembrane.permeate, permeateSource.permeate) annotation (Line(
        points={{-35.64,9.4},{-36,9.4},{-36,66},{-77,66}}, color={28,108,200}));
  connect(vMDMembrane.mEMBRANEPROPERTIES, membraneSOurce.mEMBRANEPROPERTIES)
    annotation (Line(points={{27.72,8},{50,8},{50,65.2},{71.8,65.2}}, color={28,
          108,200}));
  connect(vMDMembrane.retentate, retentateSource.retentate) annotation (Line(
        points={{30.36,-28.4},{56,-28.4},{56,-70},{80.6,-70}}, color={28,108,200}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end FlowsheetVMD;
