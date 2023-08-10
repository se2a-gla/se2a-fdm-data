function [c_L,c_m,c_D,z2_dt] = wingCustomActuator(wing)

abs_V_i = vecnorm( wing.state.aero.local_inflow.V_25, 2, 1 );

[F_10,F_11] = airfoilFlapEffectiveness(wing.geometry.segments.flap_depth);

delta_qs = airfoilFlapDeltaQs( F_10, F_11,abs_V_i, ...
    sum(wing.state.geometry.ctrl_pt.c,3), wing.state.actuators.segments.pos(2,:), ...
    wing.state.actuators.segments.rate(2,:) ) .* cos(wing.geometry.segments.flap_sweep); 

z2_dt = zeros(size(wing.state.aero.unsteady.z2));
[ c_L, z2_dt(1:2,:) ] = airfoilFlapUnstLift( ...
    abs_V_i,wing.state.aero.circulation.Ma, wing.state.geometry.ctrl_pt.c, ...
    delta_qs, wing.state.aero.unsteady.z2(1:2,:) );
c_m = airfoilFlapMoment( wing.state.aero.unsteady.c_L_c_flap, wing.geometry.segments.flap_depth )*0;
c_D = zeros(size(c_L));

end