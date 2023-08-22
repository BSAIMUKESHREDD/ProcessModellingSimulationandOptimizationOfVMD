within VacuumMembraneDistillation.Source;
model MembraneSOurce
   parameter Real Am(unit="m2")=0.23; //area of membrane
  parameter Real r(unit="m")=0.07*0.5*1e-6; //radius of membrane pore
  parameter Real epsilon(unit="")=0.7; //porosity of membrane
  parameter Real delta(unit="m")=0.3*1e-3;//thickness of membrane
  parameter Real tau(unit="")=1.5;//tourtosity of membrane
  parameter Real M(unit="kg/kmol")=18; //molecular weight of water
  parameter Real R(unit="J/(mol.K)")=8.314; //UGC

 Real lambda_M(unit="W/(m.K)"); //thermal conductivity of membrane

parameter Real d(unit="m")=0.9*1e-3; //diameter of memebrane either tube or shell depending where fluid is flowing'
parameter Real D_ab(unit="m/s")=1.53*1e-9;//diffusivity coefficent


  Streams.MEMBRANEPROPERTIES mEMBRANEPROPERTIES
    annotation (Placement(transformation(extent={{8,-18},{28,2}})));
equation
  mEMBRANEPROPERTIES.Am =Am;
  mEMBRANEPROPERTIES.r =r;
  mEMBRANEPROPERTIES.delta =delta;
  mEMBRANEPROPERTIES.epsilon =epsilon;
  mEMBRANEPROPERTIES.tau=tau;
  mEMBRANEPROPERTIES.R=R;
  mEMBRANEPROPERTIES.M =M;

  mEMBRANEPROPERTIES.lambda_M =lambda_M;

  mEMBRANEPROPERTIES.d =d;
  mEMBRANEPROPERTIES.D_ab =D_ab;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-34,50},{2,26}},
          lineColor={28,108,200},
          fillColor={244,125,35},
          fillPattern=FillPattern.Forward)}),                    Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end MembraneSOurce;
