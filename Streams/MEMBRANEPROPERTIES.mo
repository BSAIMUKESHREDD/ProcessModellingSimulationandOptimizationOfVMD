within VacuumMembraneDistillation.Streams;
connector MEMBRANEPROPERTIES

    Real Am(unit="m2"); //area of membrane
    Real r(unit="m"); //radius of membrane pore
    Real epsilon(unit=""); //porosity of membrane
    Real delta(unit="m");//thickness of membrane
    Real tau(unit="");//tourtosity of membrane
    Real M(unit="kg/kmol"); //molecular weight of water
    Real R(unit="J/(mol.K)"); //UGC

  Real lambda_M(unit="W/(m.K)"); //thermal conductivity of membrane // use isotropic strain model

  Real d(unit="m"); //diameter of memebrane either tube or shell depending where fluid is flowing'
  Real D_ab(unit="m/s");//diffusivity coefficent

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-72,52},{0,-4}},
          lineColor={28,108,200},
          fillColor={28,108,200},
          fillPattern=FillPattern.Solid), Ellipse(
          extent={{-82,70},{12,28}},
          lineColor={28,108,200},
          fillColor={0,140,72},
          fillPattern=FillPattern.CrossDiag)}),                  Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end MEMBRANEPROPERTIES;
