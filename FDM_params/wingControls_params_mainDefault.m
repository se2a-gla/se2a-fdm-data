% SE2A main wing devices parameters (default)


% 'everywhere': each wing panel has an own LAD control input (ignore
%               eta_segments); append '-0.1' for removing LADs at the wing
%               center up to 0.1 wing semi-span
% 'specified': the LAD control inputs are specified via eta_segments
param.lad_mode = 'everywhere-0.1'; % 'specified'
param.flap_mode = 'everywhere-0.1'; % 'everywhere-0.1'


% dimensionless span flap boarders (from root to tip; symmetric on left side)
param.eta_segments_device = [ 0, 0.101, 0.189, 0.304, 0.662, 0.696, 0.953, 1 ];
% flap depth, relative to local chord 
param.flap_depth = [ 0.15, 0.15, 0.15, 0.15, 0.15, 0.15, 0.15 ];
param.control_input_index(1,:) = [ 0, 1, 0, 2, 0, 3, 0, 0, 4, 0, 5, 0, 6, 0 ];
param.control_input_index(2,:) = [ 7 8 9 10 11 12 13 14 15 16 17 18 19 20 ];

% LAD type
param.actuator_2_type = 'custom';
% airfoil
param.section = 'airfoilAnalytic0515_params_F15';


