mdl_nao
qDefault = [0,0,0,0];
qDefault6 = [0,0,0,0,0,0];
% desenha os membros do robot
zlim([-350 200])
hold on
rightleg.plot(qDefault6)
leftleg.plot(qDefault6)
leftarm.plot(qDefault)
rightarm.plot(qDefault)
% desenha o corpo do robot
patch([0 0 0 0], [100 50 -50 -100], [100 -100 -100 100], 'r')
% desenha a cabeça do robot
patch([0 0 0 0 0 0 0 0], [-25 -50 -50 -25 25 50 50 25], [100 133 166 200 200 166 133 100], 'r')
hold off
crouch = [0 0 -pi/2 pi/2 0 0];
zero = [0 0 0 0 0 0];
leftleg.teach()
segments = [crouch; zero];
tseg = [1, 1];
traj = mstraj(segments, [], tseg, zero, 0.1, 0.1);
leftleg.plot(traj)
rightleg.plot(traj)