% ** parameters of actuator dynamics ** 
%
% typical values see Brockhaus et al. (2011). Flugregelung. Springer on
% page 418.

infEmb = realmax('double');

% LAD servo dynamics
param.LAD.omega = 100;
% damping ratio rudder
param.LAD.D = 1;
% maximum deflections and deflection rates rudder
param.LAD.defl_max = deg2rad(30);
param.LAD.defl_min = deg2rad(-30);
param.LAD.defl_rate_max = deg2rad(100);
param.LAD.defl_rate_min = -deg2rad(100);

% natural frequency rudder
param.rudder.omega = 30;
% damping ratio rudder
param.rudder.D = 1;
% maximum deflections and deflection rates rudder
param.rudder.defl_max = deg2rad(30);
param.rudder.defl_min = deg2rad(-30);
param.rudder.defl_rate_max = infEmb;
param.rudder.defl_rate_min = -infEmb;

% natural frequency elevator
param.elevator.omega = 30;
% damping ratio elevator
param.elevator.D = 1;
% maximum deflections and deflection rates elevator
param.elevator.defl_max = deg2rad(30);
param.elevator.defl_min = deg2rad(-30);
param.elevator.defl_rate_max = infEmb;
param.elevator.defl_rate_min = -infEmb;

% natural frequency aileron
param.aileron.omega = 30;
% damping ratio aileron
param.aileron.D = 1;
% maximum deflections and deflection rates aileron
param.aileron.defl_max = deg2rad(30);
param.aileron.defl_min = deg2rad(-30);
param.aileron.defl_rate_max = infEmb;
param.aileron.defl_rate_min = -infEmb;

% max thrust, N (just a random value which should match approximately)
param.engines.thrust_max = 160000;
% time constant, s
param.engines.T = 1;

% htp trim dynamics
param.htp_trim.omega = 1;
param.htp_trim.D = 1;
param.htp_trim.defl_max = deg2rad(10);
param.htp_trim.defl_min = deg2rad(-10);
param.htp_trim.defl_rate_max = infEmb;
param.htp_trim.defl_rate_min = -infEmb;