%PUMA560 Configuration
mdl_puma560
p560; %Visualize the kinematic parameters

%Initial geometric configuration
initPos = [-0.6, -0.3, 0.5];
initAng = [10*pi/180, 160*pi/180, 20*pi/180];

TTCP_World_init = transl(initPos)*rpy2tr(initAng);
q_init = p560.ikine6s(TTCP_World_init);

figure()
p560.plot(q_init) % plot the robot at configuration q_init

%Desired position
desiredPos = [-0.4, -0.3, 0.5];
desiredAng = [10*pi/180, 160*pi/180, 20*pi/180];

TTCP_World_desired = transl(desiredPos)*rpy2tr(desiredAng);
q_desired = p560.ikine6s(TTCP_World_desired);

figure()
p560.plot(q_desired) % plot the robot at configuration q_init

