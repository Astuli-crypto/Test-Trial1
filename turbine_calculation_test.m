% Turbine Parameters
inletPressure = 70;             % Inlet pressure in bar
outletPressure = 3;            % Outlet pressure in bar
inletTemperature = 1100;        % Inlet temperature in Kelvin
efficiency = 0.7;              % Turbine efficiency (0 to 1)
massFlowRate = 0.23;             % Mass flow rate in kg/s

% Conversion to SI units
inletPressure_SI = inletPressure * 1e5;            % Conversion from bar to Pa
outletPressure_SI = outletPressure * 1e5;          % Conversion from bar to Pa
inletTemperature_SI = inletTemperature;            % No conversion required for temperature

% Ideal gas constant
R = 8.314; % J/(mol*K)

TPR = inletPressure_SI/outletPressure_SI;

% Molar mass of the working fluid
molarMass = 22.21; % kg/mol (for air)

% Calculation of specific gas constant
gasConstant = R / molarMass;

% Calculation of specific heat ratio (assumed constant)
gamma = 1.11;

%C_p = (gamma/(gamma-1))*gasConstant*inletTemperature_SI

C_p = 8.7429*inletTemperature_SI;

powerOutput = massFlowRate*C_p*(1 - ((1/TPR)^((gamma-1)/gamma)))*efficiency;

% Display the result
disp(['The power output of the turbine is ', num2str(powerOutput), ' KWatts']);