% SE2A htp devices parameters (default)


% 'everywhere': each wing panel has an own LAD control input (ignore
%               eta_segments)
% 'specified': the LAD control inputs are specified via eta_segments
param.lad_mode = 'specified'; % 'everywhere'
param.flap_mode = 'specified'; % 'everywhere'


% dimensionless span flap boarders (from root to tip; symmetric on left side)
param.eta_segments_device = [ 0, 0.05, 0.95, 1];
% flap depth, relative to local chord 
param.flap_depth = [ 0, 0.225, 0 ];
param.control_input_index(1,:) = [ 0, 1, 0, 0, 1, 0 ];
param.control_input_index(2,:) = [ 0, 0, 0, 0, 0, 0 ];

% LAD type
param.actuator_2_type = 'none';
% airfoil
param.section = 'airfoilAnalyticSimple_params_default';
